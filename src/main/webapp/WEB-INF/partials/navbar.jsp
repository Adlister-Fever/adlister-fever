<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <nav class="navbar navbar-expand sticky-top navbar-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse sm-justify-content-center" id="navbarNavAltMarkup">
            <a href="/"><img src="Adlister-Logo.png" id="logo"></a>
            <div class="navbar-nav">
                <c:if test="${user != null}">
                    <a href="/ads/create">
                        <button type="button" class=" btn btn-outline-light">Create</button>
                    </a>
                    <a href="/ads/index">
                        <button type="button" class=" btn btn-outline-light">Ads</button>
                    </a>
                    <a href="/profile">
                        <button type="button" class=" btn btn-outline-light">Profile</button>
                    </a>
                    <a href="/logout">
                        <button type="button" class=" btn btn-outline-light">Logout</button>
                    </a>
                </c:if>
                <c:if test="${user == null}">
                    <a href="/register">
                        <button type="button" class=" btn btn-outline-light">Register</button>
                    </a>
                    <a href="/login">
                        <button type="button" class=" btn btn-outline-light">Login</button>
                    </a>
                </c:if>
            </div>
        </div>
    </nav>
<%--CONTAINER FLUID DIV DOES NOT HAVE CLOSURE HERE.  CLOSES AT END OF FOOTER. DO NOT ADD DIV CLOSURE.--%>
