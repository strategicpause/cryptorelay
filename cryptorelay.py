from email.Header import Header
from email.MIMEText import MIMEText
from GPG import GPG
from twisted.internet import protocol, reactor, defer
from twisted.mail import smtp
from twisted.mail.smtp import sendmail
from zope.interface import implements
import os, email, email.Utils
import smtplib

STORAGE_DIR = "/home/nick/Projects/cryptorelay/storage/"
SMTP_SERVER = "smtp.gmail.com"
SMTP_PORT = "587"
SMTP_USERNAME = ""
SMTP_PASSWORD = ""
TO_EMAIL = "strategicpause@gmail.com" # Hard coded for testing purposes

class MailSender(object):
    implements(smtp.IMessage)

    def __init__(self,toAddr):
    	self.toAddr = toAddr # Who are we sending the encrypted email to?
        self.lines = []
	self.gpg = GPG()
    
    def lineReceived(self, line):
        self.lines.append(line)

    def eomReceived(self):
	# Message we recieved
    	msgRcv = email.message_from_string('\n'.join(self.lines)) 
	# This will be the message that we send
	payload = msgRcv.get_payload()
    	self.msg = MIMEText(self.gpg.encrypt(payload,TO_EMAIL,always_trust=True).data) 
    	self.msg['Subject'] = msgRcv['Subject']
	self.msg['From'] = email.Utils.parseaddr(msgRcv['From'])[1]
	self.msg['Reply-To'] = self.msg['From']
        self.msg['To'] = TO_EMAIL
        print self.msg 	
	self.sendMessage()
        return defer.succeed(None)

    def connectionLost(self):
        print "Connection lost unexpectedly!"
        del(self.lines) # unexpected loss of connection; don't save
	
    def sendMessage(self):
        s = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
	s.ehlo()
	s.starttls()
	s.ehlo()
	s.login(SMTP_USERNAME,SMTP_PASSWORD)
        s.sendmail(self.msg['From'], self.msg['To'], str(self.msg))
	s.close()
	

class LocalDelivery(object):
    implements(smtp.IMessageDelivery)
        
    def receivedHeader(self, helo, origin, recipients):
        myHostname, clientIP = helo
        headerValue = "by %s from %s with ESMTP ; %s" % (
            myHostname, clientIP, smtp.rfc822date())
        # email.Header.Header used for automatic wrapping of long lines
        return "Received: %s" % Header(headerValue)

    def validateFrom(self, helo, originAddress):
        return originAddress # Accept mail from anywhere.	
    
    def validateTo(self, user):
    	# Only process email addresses that exist
		if os.path.exists(STORAGE_DIR + str(user.dest)):
			return lambda: MailSender(user.dest)
		else:
			print "User %s does not exist" % user
			raise smtp.SMTPBadRcpt(user)
    
class SMTPFactory(protocol.ServerFactory):    
    def buildProtocol(self, addr):
        delivery = LocalDelivery()
        smtpProtocol = smtp.SMTP(delivery)
        smtpProtocol.factory = self
        return smtpProtocol

if __name__ == "__main__":
    import sys
    reactor.listenTCP(25, SMTPFactory())
    reactor.run()
