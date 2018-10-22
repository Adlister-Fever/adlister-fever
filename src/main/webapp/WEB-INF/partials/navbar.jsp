<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Brand and toggle get grouped for better mobile display -->


<div>
    <img src="../../Adlister_bg.jpg" id="background">
</div>

<nav class="navbar navbar-expand sticky-top navbar-dark bg-success">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div>
        <a href="/"><img src="../../Adlister-Logo-White.png" id="logo"></a>
    </div>
    <div class="collapse navbar-collapse sm-justify-content-center" id="navbarNavAltMarkup">
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