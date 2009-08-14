from email.Header import Header
from email.MIMEText import MIMEText
from twisted.internet import protocol, reactor, defer
from twisted.mail import smtp
from twisted.mail.smtp import sendmail
from zope.interface import implements
import os, email, email.Utils
import smtplib

STORAGE_DIR = "/Users/Nick/cryptorelay/storage/"
SMTP_SERVER = "localhost"
TEST_EMAIL = "strategicpause@gmail.com"

class MailSender(object):
    implements(smtp.IMessage)

    def __init__(self,toAddr):
    	self.toAddr = toAddr # Who are we sending the encrypted email to?
        self.lines = []
    
    def lineReceived(self, line):
        self.lines.append(line)

    def eomReceived(self):
    	msgRcv = email.message_from_string('\n'.join(self.lines)) # Message we recieved
    	msg = MIMEText(msgRcv.get_payload()) # This will be the message that we send
    	msg['Subject'] = msgRcv['Subject']
        msg['From'] = email.Utils.parseaddr(msgRcv['From'])[1]
        msg['To'] = TEST_EMAIL
        print msg  	
        #s = smtplib.SMTP(SMTP_SERVER)
        #s.sendmail(msg['From'], msg['To'], msg)
        d = defer.Deferred()
        d.callback(message)
        return d

    def connectionLost(self):
        print "Connection lost unexpectedly!"
        del(self.lines) # unexpected loss of connection; don't save

	
		
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