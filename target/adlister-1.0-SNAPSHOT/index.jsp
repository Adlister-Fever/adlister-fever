<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body class="container">
<div class="container-fluid">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-2 lister">Welcome to...         </h1>
            <div class="text-center">
                <img src="Adlister-Logo.png" alt="logo" id="mainlogo" class="">
            </div>
            <p class="lead">
                <%--This is a modified jumbotron that occupies the entire horizontal space of its parent.--%>
            </p>
        </div>
    </div>
</div>
</body>
</html>
