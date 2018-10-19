<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <div class="display-4">Welcome, ${sessionScope.user}!</div>
        <div class="card">
            <%--image--%>
            <div class="media" id="media">
                <div class="media-body">
                    <h5 class="mt-0">${sessionScope.user}</h5>
                    <div>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Asperiores corporis error ex excepturi magnam magni nobis quaerat.
                        Ad deleniti dolorem enim excepturi, expedita, id nemo odio optio, quia repellat sequi.
                    </div>
                </div>
            </div>

        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp">
        <jsp:param name="footer" value="Your Footer" />
    </jsp:include>
</body>
</html>
