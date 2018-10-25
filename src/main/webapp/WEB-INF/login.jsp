<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>

    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <jsp:include page="/WEB-INF/partials/firePics.jsp"/>
        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <input type="hidden" name="from" value="${param.from}">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-success btn-block" value="Log In">
        </form>
    </div>



    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>
