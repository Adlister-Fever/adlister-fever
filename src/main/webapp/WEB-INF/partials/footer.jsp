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
<%--<link rel=stylesheet href="https://s3-us-west-2.amazonaws.com/colors-css/2.2.0/colors.min.css">--%>
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<script>

    let image;
    $.ajax({
        url: 'https://randomuser.me/api/',
        dataType: 'json',
        success: function(data) {
            console.log(data);
            console.log(data.results);
            console.log(data.results[0].gender);
            console.log(data.results[0].picture.thumbnail);
            image = data.results[0].picture.large;
            let line = "<img class=\"mr-3\" src=\"";
            // line += "https://randomuser.me/api/portraits/lego/0.jpg";
            line += image;
            line += "\" alt=\"Generic placeholder image\">";
            $(line).insertAfter("#media");
        }
    });



</script>
