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
<jsp:include page="/WEB-INF/partials/firePics.jsp"/>
            <h1 class="display-2 lister">Welcome to</h1>
            <div class="">
                <img src="Adlister-Logo-White.png" alt="logo" id="mainlogo" class="">
            </div>
            <p class="lead">
                <%--This is a modified jumbotron that occupies the entire horizontal space of its parent.--%>
            </p>
        </div>
    </div>

    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://i.pinimg.com/originals/87/e2/03/87e20377c9c37d0b07dcc10504c636a8.png" alt="First slide">
            </div>
            <c:forEach var="ad" items="${ads}">
                <div class="carousel-item mx-auto">${ad.image}
                    <%--<div class="carousel-caption d-none d-md-block">--%>
                    <div class="text-center text-white">${ad.title}</div>
                    <div class="text-center text-white">${ad.description}</div>
                <%--</div>--%>
                </div>
            </c:forEach>

        </div>
    </div>
    <jsp:include page="WEB-INF/partials/footer.jsp"/>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function(){
            $('.carousel').carousel({
                interval: 2000
            })
            $('.carousel-item > img').css({"height":"150px", "width":"150px", "display":"block","margin":"auto" })
        });
    </script>
</body>
</html>
