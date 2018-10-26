<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/firePics.jsp"/>

<div class="row">
    <div class="profileBox col-sm-12 text-white border-0 pb-3 mx-4">

        <div class="row"><h1 class="title display-4 mx-auto">Welcome, ${sessionScope.user} ${sessionScope.last_name}!</h1></div>
        <div class="row">
            <div class="media mx-auto" id="media">
                <img class="mr-3 rounded-circle" id="profile-pic" src="${profile}" alt="Generic placeholder image">
                <div class="media-body ml-4 text-left">
                    <h4 class="mt-0"><c:out value="${sessionScope.user}"/></h4>
                    <div>
                        <div><h5>Email:</h5> <c:out value="${email}"/></div>
                        <div><h5>Address:</h5> <c:out value="${street}"/>,</div>
                        <div><c:out value="${city}"/>, <c:out value="${state}"/>, <c:out value="${zip}"/></div>
                        <div class="row mx-auto">
                            <button type="button" class="btn btn-outline-light text-white mt-2 ml-50" data-toggle="modal"
                                    data-target=".bd-example-modal-lg">Edit Profile
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Large modal -->

<%--NEED TO PUT MESSAGE TEXT HERE--%>
<h1> You received a message about one of your items!</h1>
<p></p>



<div class ="lister col-sm-12 display-4 my-2">Your Ads</div>
<div class="d-flex mx-auto">
    <div class="container text-center">
        <c:forEach var="ad" items="${userads}">
            <div class="adBox card float-left text-center d-flex justify-content-center">
                <h2><a href="/ads/view?id=${ad.id}&title=${ad.title}"><c:out value="${ad.title}"/></a></h2>
                <p>Price:$ <c:out value="${ad.value}"/></p>
                <p>Furniture Type: <c:out value="${ad.image}"/></p>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
</div>
<!-- Large modal -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content p-4">
            <form action="/profile" method="post">
                <div class="form-row">
                    <div class="col">
                        <input type="text" name="username" class="form-control" value="${sessionScope.user}">
                    </div>
                    <div class="col">
                        <input type="text" name="last_name" class="form-control" value="${sessionScope.last_name}">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Email</label>
                        <input type="email" name="email" class="form-control" id="inputEmail4" value="${email}">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Password</label>
                        <input type="password" name="newPassword" class="form-control" id="inputPassword4" placeholder="Password" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" name="address" class="form-control" id="inputAddress" value="${street}">
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" name="city" class="form-control" id="inputCity" value="${city}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">State</label>

                            <input type="text" name="state" class="form-control" id="inputState" value="${state}">

                        <%--<select id="inputState" name="state" class="form-control" value="${state}">--%>
                            <%--<option value="AL">Alabama</option>--%>
                            <%--<option value="AK">Alaska</option>--%>
                            <%--<option value="AZ">Arizona</option>--%>
                            <%--<option value="AR">Arkansas</option>--%>
                            <%--<option value="CA">California</option>--%>
                            <%--<option value="CO">Colorado</option>--%>
                            <%--<option value="CT">Connecticut</option>--%>
                            <%--<option value="DE">Delaware</option>--%>
                            <%--<option value="DC">District Of Columbia</option>--%>
                            <%--<option value="FL">Florida</option>--%>
                            <%--<option value="GA">Georgia</option>--%>
                            <%--<option value="HI">Hawaii</option>--%>
                            <%--<option value="ID">Idaho</option>--%>
                            <%--<option value="IL">Illinois</option>--%>
                            <%--<option value="IN">Indiana</option>--%>
                            <%--<option value="IA">Iowa</option>--%>
                            <%--<option value="KS">Kansas</option>--%>
                            <%--<option value="KY">Kentucky</option>--%>
                            <%--<option value="LA">Louisiana</option>--%>
                            <%--<option value="ME">Maine</option>--%>
                            <%--<option value="MD">Maryland</option>--%>
                            <%--<option value="MA">Massachusetts</option>--%>
                            <%--<option value="MI">Michigan</option>--%>
                            <%--<option value="MN">Minnesota</option>--%>
                            <%--<option value="MS">Mississippi</option>--%>
                            <%--<option value="MO">Missouri</option>--%>
                            <%--<option value="MT">Montana</option>--%>
                            <%--<option value="NE">Nebraska</option>--%>
                            <%--<option value="NV">Nevada</option>--%>
                            <%--<option value="NH">New Hampshire</option>--%>
                            <%--<option value="NJ">New Jersey</option>--%>
                            <%--<option value="NM">New Mexico</option>--%>
                            <%--<option value="NY">New York</option>--%>
                            <%--<option value="NC">North Carolina</option>--%>
                            <%--<option value="ND">North Dakota</option>--%>
                            <%--<option value="OH">Ohio</option>--%>
                            <%--<option value="OK">Oklahoma</option>--%>
                            <%--<option value="OR">Oregon</option>--%>
                            <%--<option value="PA">Pennsylvania</option>--%>
                            <%--<option value="RI">Rhode Island</option>--%>
                            <%--<option value="SC">South Carolina</option>--%>
                            <%--<option value="SD">South Dakota</option>--%>
                            <%--<option value="TN">Tennessee</option>--%>
                            <%--<option value="TX">Texas</option>--%>
                            <%--<option value="UT">Utah</option>--%>
                            <%--<option value="VT">Vermont</option>--%>
                            <%--<option value="VA">Virginia</option>--%>
                            <%--<option value="WA">Washington</option>--%>
                            <%--<option value="WV">West Virginia</option>--%>
                            <%--<option value="WI">Wisconsin</option>--%>
                            <%--<option value="WY">Wyoming</option>--%>
                        <%--</select>--%>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" name="zip" class="form-control" id="inputZip" value="${zip}">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/partials/footer.jsp">
    <jsp:param name="footer" value="Your Footer"/>
</jsp:include>
<script>
    $("#myModal").modal('show')


</script>
</body>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
</html>
