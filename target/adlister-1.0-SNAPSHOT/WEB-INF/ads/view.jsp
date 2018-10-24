
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
    <jsp:include page="/WEB-INF/partials/firePics.jsp"/>
    <h1 class="lister">Here is the ad:</h1>

    <%--<c:forEach var="ad" items="${ads}">--%>
    <%--<div class="col-md-6 ${ad.id}">--%>
    <%--<h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>--%>
    <%--<p>Price: ${param.value}</p>--%>
    <%--<p>Furniture Type: ${sessionScope.id}</p>--%>
    <%--<p>${ad.description}</p>--%>
    <%--</div>--%>
    <%--</c:forEach>--%>
    <div class="card text-center bg-transparent border-0 lister font-white">
        <div class="display-2">${title}</div>
        <br>
        <%--<p>AD ID: ${param.id}</p>--%>
        <div>${description}</div>
        <br>
        <div class="display-4">
            $${price}
        </div>
        <br>
        <div class="display-4">
            Furniture Type: ${image}
        </div>
    </div>

    <div class="card bg-transparent">
        <div class="display-4 lister">Seller:</div>
        <div><img src="${seller_image}" alt="seller profile picture"></div>
        <div>${username}</div>
        <div>${home_phone}</div>
        <div>${cell}</div>
        <div>${email}</div>
    </div>

</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>