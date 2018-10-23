<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
<jsp:include page="/WEB-INF/partials/firePics.jsp"/>
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="price">Sale Price</label>
                <input id="price" name="price" class="form-control" type="number">
            </div>
            <div class="form-group">
                <label for="image">Image</label>
                <input id="image" name="image" class="form-control" type="text">
                <small id="imageHelpBlock" class="form-text text-light">
                    You can link an image for your item here!  If not, don't worry; we'll use a placeholder.
                </small>
            </div>
            <input type="submit" class="btn btn-block btn-success">
        </form>
    </div>
<jsp:include page="../partials/footer.jsp"/>
</body>
</html>