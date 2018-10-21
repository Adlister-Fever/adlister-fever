<%--
  Created by IntelliJ IDEA.
  User: wilfredopacheco
  Date: 10/18/18
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer>

</footer>

<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

<%--THIS IS CUSTOM JAVASCRIPT SECTION--%>
<script>
    var inputArray = [];
    $("confirm_Password").keyup(function(event){
        inputArray.push(event.keyCode);
        if (inputArray.toString().includes("38,38,40,40,37,39,37,39,66,65,13")) {
            colorFlash();
            imageParty();
            imageDance();
        }
    });

</script>


