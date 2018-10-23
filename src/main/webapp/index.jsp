<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>

    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="jumbotron jumbotron-fluid bg-transparent text-center">
        <div class="container">
            <h1 class="display-2 lister">Welcome to</h1>
            <div class="">
                <img src="Adlister-Logo-White.png" alt="logo" id="mainlogo" class="">
            </div>
            <p class="lead">
                <%--This is a modified jumbotron that occupies the entire horizontal space of its parent.--%>
            </p>
        </div>
    </div>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
                <c:forEach var="ad" items="${ads}">
                <div class="card float-left col-md-4 text-center${ad.id}">
                    <h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>
                    <p>Price:$ ${ad.value}</p>
                    <p>Furniture Type: ${ad.image}</p>
                    <p>${ad.description}</p>
                </div>
            </c:forEach></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="..." alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="..." alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="..." alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</body>
</html>
