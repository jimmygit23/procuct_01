<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=gb2312">
        <META http-equiv="Content-Style-Type" content="text/css">
        <META http-equiv="Content-Script-Type" content="text/javascript">
        <TITLE>Checking if Acrobat Reader installed (IE4+)...</TITLE>
        <SCRIPT for="window" event="onload">
 
            document.all [
                         document.all.PDFNotKnown ? "IfNoAcrobat" : "IfAcrobat"
                         ] .style.display = "block";
         
        </SCRIPT>
    </HEAD>
    <BODY>
        <NOSCRIPT>
            Cannot determine if you have Acrobat Reader (or the full Acrobat)
            installed <FONT size="-1">(because JavaScript is unavailable or 
            turned off)</FONT>.
        </NOSCRIPT>
        <DIV id="IfNoAcrobat" style="display:none">
            <a href="http://get.adobe.com/cn/reader/">你需要先安装Adobe Reader才能正常浏览文件，请点击这里下载Adobe Reader.</a>   

      </DIV>
        <OBJECT type="application/pdf" width=0 height=0 style="display:none">
            <DIV id="PDFNotKnown" style="display:none">&nbsp;</DIV>
        </OBJECT>
   <DIV id=showdiv
style="Z-INDEX: 0; LEFT:10px; WIDTH: 990px; POSITION: absolute; TOP: -8px; HEIGHT: 10px">
<object classid="clsid:CA8A9780-280D-11CF-A24D-444553540000" width="990" height="700" border="0" top="-10" name="pdf"> 
<param name="toolbar" value="false">
<param name="_Version" value="65539">

<param name="_ExtentX" value="20108">

<param name="_ExtentY" value="10866">

<param name="_StockProps" value="0">

<param name="SRC" value="MXL.pdf">
</object>
</DIV>
</BODY>
</HTML>