<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="row">
    <div class="profileBox col-sm-12 bg-success text-white border-0 pb-3 mx-4">
        <div class="display-4 row" style="background-color: indianred">Welcome, ${sessionScope.user} ${sessionScope.last_name}!</div>
        <div class="row">
            <div class="media" id="media">
                <img class="mr-3" id="profile-pic" src="${profile}" alt="Generic placeholder image">
                <button type="button" class="btn btn-outline-light text-white" data-toggle="modal"
                        data-target=".bd-example-modal-lg">Edit Profile
                </button>
                <div class="media-body text-center">
                    <h5 class="mt-0">${sessionScope.user}</h5>
                    <div>
                        <div>Email: ${email}</div>
                        <div>Address: ${street},</div>
                        <div>${city}, ${state}, ${zip}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Large modal -->

<div class="container">
    <h1 class="lister">Your ads:</h1>
    <c:forEach var="ad" items="${userads}">
    <div class="adBox card float-left text-center${ad.id}">
        <h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>
        <p>Price:$ ${ad.value}</p>
        <p>Furniture Type: ${ad.image}</p>
        <p>${ad.description}</p>
    </div>
    </c:forEach>
</div>



<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Email</label>
                        <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Password</label>
                        <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Address 2</label>
                    <input type="text" class="form-control" id="inputAddress2"
                           placeholder="Apartment, studio, or floor">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">State</label>
                        <select id="inputState" class="form-control">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" class="form-control" id="inputZip">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gridCheck">
                        <label class="form-check-label" for="gridCheck">
                            Check me out
                        </label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp">
    <jsp:param name="footer" value="Your Footer"/>
</jsp:include>
</body>
</html>
