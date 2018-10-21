<%--
  Created by IntelliJ IDEA.
  User: svelazquez
  Date: 10/21/18
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <%--<h1>Here Are all the ads!</h1>--%>

    <%--<c:forEach var="ad" items="${ads}">--%>
        <%--<div class="col-md-6 ${ad.id}">--%>
            <%--<h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>--%>
            <%--<p>Price: ${ad.value}</p>--%>
            <%--<p>Furniture Type: ${ad.image}</p>--%>
            <%--<p>${ad.description}</p>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>

        <div class="col-md-6 ${ad.id}">
        <h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>
        <p>Price: ${ad.value}</p>
        <p>Furniture Type: ${ad.image}</p>
        <p>${ad.description}</p>
        </div>

</div>

</body>
</html>