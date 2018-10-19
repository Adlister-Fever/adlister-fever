<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="card">
        <div class="media">
            <img class="mr-3" src=".../64x64" alt="Generic placeholder image">
            <div class="media-body">
                <h5 class="mt-0">Welcome, ${sessionScope.user.username}!</h5>
                <div>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores corporis error ex excepturi magnam magni nobis quaerat. Ad deleniti dolorem enim excepturi, expedita, id nemo odio optio, quia repellat sequi.
                </div>
            </div>
        </div>
    </div>
</body>
</html>
