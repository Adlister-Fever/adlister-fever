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
    <div class="lister display-3 p-2">Here are all the ads!</div>
    <c:forEach var="ad" items="${ads}">
        <div class="adBox card float-left col-3 text-center">
            <%--this puts the title parameter in the url--%>
            <h2><a href='/ads/view?title=${ad.title}&id=${ad.id}'> <div>${ad.title}</div> </a></h2>
                <%--&desc=${ad.image}--%>
                <p>Price:$ ${ad.value}</p>
            <p>Furniture Type: ${ad.image}</p>
            <p>${ad.description}</p>
        </div>
        </c:forEach>
    </div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>
