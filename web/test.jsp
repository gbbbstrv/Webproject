<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html> <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP标签切换</title>
    <link rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function turnNextTab(
                lastId, LastSrc, id, src, nextId, nextSrc)
        { document.getElementById(id).src = src;
            document.getElementById(lastId).src = LastSrc;
            document.getElementById(nextId).src = nextSrc; }
    </script>
</head>
<body> <div id=left_b1>
    <div id="gdmenu"$amp;>amp;$lt;/div>
        <div id="gdmenu_on"> <img id="img1" src="images/1_1.jpg" width="81" height="28" onclick="javascript:turnNextTab('img2', 'images/2.jpg', 'img1', 'images/1_1.jpg', 'img3', 'images/3.jpg')" />
        </div>
        <div id="gdmenu_off">
            <img id="img2" src="images/2.jpg" width="81" height="28" onclick="javascript:turnNextTab('img1', 'images/1.jpg', 'img2', 'images/2_1.jpg', 'img3', 'images/3.jpg')" />
        </div>
        <div id="gdmenu_off">
            <img id="img3" src="images/3.jpg" width="81" height="28" onclick="javascript:turnNextTab('img1', 'images/1.jpg', 'img3', 'images/3_1.jpg', 'img2', 'images/2.jpg')" />
        </div> </div> </body> </html>