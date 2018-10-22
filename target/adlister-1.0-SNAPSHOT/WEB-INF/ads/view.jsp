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
    <h1>Here is the ad.</h1>

    <%--<c:forEach var="ad" items="${ads}">--%>
        <%--<div class="col-md-6 ${ad.id}">--%>
            <%--<h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>--%>
            <%--<p>Price: ${param.value}</p>--%>
            <%--<p>Furniture Type: ${sessionScope.id}</p>--%>
            <%--<p>${ad.description}</p>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
    <p>AD: ${param.ad}</p>
    <p>AD ID: ${param.id}</p>
    <p>${param.title}</p>
    ${param.image}
    <c:forEach var="ad" items="${ads}">
        ${ad.image}
    ${ad.id}
    </c:forEach>



</div>

</body>
</html>