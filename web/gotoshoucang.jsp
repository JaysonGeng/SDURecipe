<%--
  Created by IntelliJ IDEA.
  User: MichaelOD_WIN10
  Date: 2018/5/15
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<!--HTML-->
<form action="./shoucangf.jsp" method="" id="test_form">
    <input type="hidden" name="ids" id="idss" value=""/>
    <input type="hidden" name="idl" id="idls" value=""/>
    <input type="hidden" name="idsn" id="idssn" value=""/>
    <input type="hidden" name="idln" id="idlsn" value=""/>
</form>

<script>
    var hisTime;
    var hisItem;
    var ids;
    var idl;
    var idsn;
    var idln;
    function init() {
        hisTime = [];
        hisItem = [];

        var i = 0;
        for (; i < localStorage.length; i++) {
            if (!isNaN(localStorage.key(i))) {
                hisItem.push(localStorage.getItem(localStorage.key(i)));
                hisTime.push(localStorage.key(i));
            }
        }
    }

    init();
    ids = "";
    idl = "";
    idsn = "";
    idln = "";
    if (hisItem != null) {
        for (var j = 0; j < localStorage.length; j++) {
            if ((localStorage.key(j).indexOf("s") == 0)) {
                idsn+=localStorage.key(j)+"-";
                ids+=localStorage.getItem(localStorage.key(j))+"-";
            }
            if ((localStorage.key(j).indexOf("l") == 0)) {
                idln+=localStorage.key(j)+"-";
                idl+=localStorage.getItem(localStorage.key(j))+"-";
            }
        }
    }

    var form = document.getElementById('test_form');
    document.getElementById("idss").value = ids;
    document.getElementById("idls").value = idl;
    document.getElementById("idssn").value = idsn;
    document.getElementById("idlsn").value = idln;
    console.log(ids+"ids");
    console.log(idl+"idl");
    form.submit();
</script>

</body>

</html>
