<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1249765627220" ID="Freemind_Link_1794993952" MODIFIED="1249765643517" TEXT="Cryptorelay">
<node CREATED="1249765644968" FOLDED="true" ID="_" MODIFIED="1249765651926" POSITION="right" TEXT="Working title">
<node CREATED="1249765652392" FOLDED="true" ID="Freemind_Link_29078594" MODIFIED="1249765655100" TEXT="Possible other names">
<node CREATED="1249765655334" ID="Freemind_Link_460810176" MODIFIED="1249765663495" TEXT="Encrypted Relay"/>
<node CREATED="1249765663987" ID="Freemind_Link_71939620" MODIFIED="1249765671067" TEXT="Secure relay"/>
<node CREATED="1249765671480" ID="Freemind_Link_1434157676" MODIFIED="1249765678520" TEXT="Safe Reset"/>
</node>
</node>
<node CREATED="1249765681379" ID="Freemind_Link_108243025" MODIFIED="1249765690226" POSITION="left" TEXT="What it does">
<node CREATED="1250453935338" ID="Freemind_Link_1879991544" MODIFIED="1250454031871" TEXT="Helps reduce your attack surface by allowing you to get encrypted password reset email."/>
<node CREATED="1249765690582" ID="Freemind_Link_1323587396" MODIFIED="1249765754602" TEXT="Gives you an email address that you use to signup for websites. Any email sent to that address is encrypted with your public key and then sent to your real address"/>
</node>
<node CREATED="1249765762547" ID="Freemind_Link_856402715" MODIFIED="1249765764526" POSITION="left" TEXT="Interface">
<node CREATED="1249765764946" ID="Freemind_Link_1309091968" MODIFIED="1249765767092" TEXT="email">
<node CREATED="1249801709583" ID="Freemind_Link_1846233946" MODIFIED="1250454155823" TEXT="user@example.com.cryptorelay.com">
<icon BUILTIN="bookmark"/>
</node>
<node CREATED="1250453546276" FOLDED="true" ID="Freemind_Link_195530815" MODIFIED="1250453564297" TEXT="rejected ideas">
<node CREATED="1249765869035" ID="Freemind_Link_410019225" MODIFIED="1250454171715" TEXT="user__at__example.com@cryptorelay.com"/>
<node CREATED="1249765902413" ID="Freemind_Link_15584047" MODIFIED="1250454185386" TEXT="user__at__example_facebook@cryptorelay.com"/>
</node>
</node>
<node CREATED="1249765769679" FOLDED="true" ID="Freemind_Link_328542002" MODIFIED="1249765770643" TEXT="web">
<node CREATED="1249765960698" ID="Freemind_Link_1154769241" MODIFIED="1249765965091" TEXT="Auth interfaces">
<node CREATED="1249765918549" ID="Freemind_Link_1364565262" MODIFIED="1249765942303" TEXT="no password">
<node CREATED="1249765971788" ID="Freemind_Link_1511528708" MODIFIED="1249766003033" TEXT="click &quot;sign in&quot; get an email"/>
</node>
<node CREATED="1249765942594" ID="Freemind_Link_1283859695" MODIFIED="1249765944206" TEXT="openid"/>
<node CREATED="1249765944602" ID="Freemind_Link_855526273" MODIFIED="1249765951242" TEXT="client side ssl">
<node CREATED="1249801361165" ID="Freemind_Link_544473126" MODIFIED="1249801477897" TEXT="like certifi.ca"/>
</node>
<node CREATED="1249765951566" ID="Freemind_Link_84048447" MODIFIED="1249765954536" TEXT="FireGPG">
<node CREATED="1249801481444" ID="Freemind_Link_1349666514" MODIFIED="1249801484495" TEXT="using their API?"/>
</node>
</node>
</node>
<node CREATED="1249765774533" ID="Freemind_Link_1931013230" MODIFIED="1249765775872" TEXT="none">
<node CREATED="1250053488867" ID="Freemind_Link_330504622" MODIFIED="1250453586169" TEXT="paste public key into form">
<icon BUILTIN="bookmark"/>
</node>
<node CREATED="1250053496312" ID="Freemind_Link_430389984" MODIFIED="1250053518645" TEXT="paste email address into form"/>
</node>
<node CREATED="1249801485659" FOLDED="true" ID="Freemind_Link_1275685803" MODIFIED="1249801488500" TEXT="Hybrid">
<node CREATED="1249801541754" ID="Freemind_Link_155800287" MODIFIED="1249801573704" TEXT="none">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1249801536268" ID="Freemind_Link_439597901" MODIFIED="1249801587712" TEXT="web:FireGPG">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1249801530927" ID="Freemind_Link_1778060929" MODIFIED="1249801589992" TEXT="web:openid">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node CREATED="1250053284029" ID="Freemind_Link_1927388515" MODIFIED="1250053286393" POSITION="right" TEXT="Inputs">
<node CREATED="1250053288446" FOLDED="true" ID="Freemind_Link_1072063595" MODIFIED="1250053297158" TEXT="email address">
<node CREATED="1250053297542" ID="Freemind_Link_765503396" MODIFIED="1250053298389" TEXT="ideal">
<node CREATED="1250053306870" ID="Freemind_Link_1827027334" MODIFIED="1250053313414" TEXT="query keyserver for public key"/>
<node CREATED="1250053313907" ID="Freemind_Link_870004358" MODIFIED="1250053336134" TEXT="would need to send the user an encrypted &quot;verification&quot; link to make sure they are the real thing"/>
</node>
</node>
<node CREATED="1250053299297" ID="Freemind_Link_183333113" MODIFIED="1250053301074" TEXT="public key"/>
</node>
<node CREATED="1250053337969" ID="Freemind_Link_433190843" MODIFIED="1250053339733" POSITION="right" TEXT="Problems">
<node CREATED="1250053339985" FOLDED="true" ID="Freemind_Link_1386382859" MODIFIED="1250053356909" TEXT="Why should somebody trust me with their most sensitive email?">
<node CREATED="1250053358218" ID="Freemind_Link_416995869" MODIFIED="1250053367058" TEXT="project should be built with self-hosting in mind!"/>
</node>
</node>
<node CREATED="1250053379800" FOLDED="true" ID="Freemind_Link_116473364" MODIFIED="1250053381579" POSITION="left" TEXT="Goals">
<node CREATED="1250053382535" FOLDED="true" ID="Freemind_Link_1981657044" MODIFIED="1250053384538" TEXT="No DB">
<node CREATED="1250053384831" ID="Freemind_Link_96877761" MODIFIED="1250053387913" TEXT="they suck"/>
</node>
<node CREATED="1250053390620" ID="Freemind_Link_378568940" MODIFIED="1250053398397" TEXT="Easy to set up"/>
<node CREATED="1250053399297" FOLDED="true" ID="Freemind_Link_620909972" MODIFIED="1250053402979" TEXT="Easy to maintain">
<node CREATED="1250053404734" ID="Freemind_Link_1925907543" MODIFIED="1250053419188" TEXT="ideally, should not need maintainence!"/>
</node>
</node>
<node CREATED="1250453626851" ID="Freemind_Link_853132576" MODIFIED="1250453629301" POSITION="right" TEXT="workflow">
<node CREATED="1250453849593" FOLDED="true" ID="Freemind_Link_1021250535" MODIFIED="1250453851371" TEXT="internal">
<node CREATED="1250453629817" FOLDED="true" ID="Freemind_Link_1334198935" MODIFIED="1250453845814" TEXT="paste public key into form">
<node CREATED="1250453642604" ID="Freemind_Link_1718263867" MODIFIED="1250453650021" TEXT="validate public key"/>
<node CREATED="1250453650345" ID="Freemind_Link_1258310880" MODIFIED="1250453654092" TEXT="strip out email address"/>
<node CREATED="1250453654792" ID="Freemind_Link_102873422" MODIFIED="1250453657650" TEXT="validate email address"/>
</node>
<node CREATED="1250453658869" FOLDED="true" ID="Freemind_Link_1073719102" MODIFIED="1250453680864" TEXT="send confirmation email to address">
<node CREATED="1250453681117" ID="Freemind_Link_517792511" MODIFIED="1250453729554" TEXT="validation link should be in the encrypted payload, this way we validate that they have access to the private key AND the email account"/>
</node>
<node CREATED="1250453748000" ID="Freemind_Link_938514630" MODIFIED="1250453754658" TEXT="mark email address is pending"/>
<node CREATED="1250453754910" ID="Freemind_Link_85786631" MODIFIED="1250453844751" TEXT="get confirmation click"/>
<node CREATED="1250453759115" FOLDED="true" ID="Freemind_Link_774014251" MODIFIED="1250453763749" TEXT="mark email address as working">
<node CREATED="1250453764410" ID="Freemind_Link_918306902" MODIFIED="1250453806004" TEXT="eventually we might want to sign their public key, since we trust that the email address is read by somebody with access to the public key"/>
</node>
</node>
<node CREATED="1250453855646" ID="Freemind_Link_1016857824" MODIFIED="1250453857161" TEXT="external">
<node CREATED="1250453857445" ID="Freemind_Link_1267321740" MODIFIED="1250453867437" TEXT="Paste your public key into a text field"/>
<node CREATED="1250453868072" ID="Freemind_Link_767026140" MODIFIED="1250453889186" TEXT="Check your email, decrypt the message from us and click the confirmation link"/>
<node CREATED="1250453889622" ID="Freemind_Link_1799462126" MODIFIED="1250454217017" TEXT="Send a test email to user@example.com.cryptorelay.com"/>
</node>
</node>
</node>
</map>
