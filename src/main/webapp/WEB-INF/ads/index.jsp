<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">

        <div class="card float-left col-md-4 text-center${ad.id}">
            <h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>
            <p>Price:$ ${ad.value}</p>
            <p>Furniture Type: ${ad.image}</p>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
