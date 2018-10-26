<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Brand and toggle get grouped for better mobile display -->


<div>
    <img src="../../Adlister_bg.jpg" id="background">
</div>

<nav class="navbar navbar-expand sticky-top navbar-dark"
     style="background-color: rgba(107,161,129,.90);
                max-height: 50px;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse sm-justify-content-center" id="navbarNavAltMarkup">
        <c:if test="${user != null}">
            <div class="navbar-nav mr-auto">
                <a href="/ads/create">
                    <button type="button" class=" btn btn-outline-light mr-1">Create</button>
                </a>
                <a href="/ads/index">
                    <button type="button" class=" btn btn-outline-light mr-1">Ads</button>
                </a>
                <a href="/profile">
                    <button type="button" class=" btn btn-outline-light mr-1">Profile</button>
                </a>
                <a href="/logout">
                    <button type="button" class=" btn btn-outline-light mr-1">Logout</button>
                </a>
            </div>
            <div class="mx-auto order-0">
                <a href="/index"><img src="../../Adlister-Logo-Transparent.png" id="logo"></a>
            </div>
            <div class="navbar-nav ml-auto">
                <form action="/ads/search" method="POST" class="form-inline my-auto">
                    <input class="form-control mx-2" type="search" name="searchTerm" placeholder="Search ads" aria-label="Search">
                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </c:if>
        <c:if test="${user == null}">
            <div class="navbar-nav mr-auto">
                <a href="/register">
                    <button type="button" class=" btn btn-outline-light mr-1">Register</button>
                </a>
                <a href="#">
                    <button type="button" class=" btn btn-outline-light mr-1 disabled">Ads</button>
                </a>
                <a href="#">
                    <button type="button" class=" btn btn-outline-light mr-1 disabled">Profile</button>
                </a>
                <a href="/login">
                    <button type="button" class=" btn btn-outline-light mr-1">Login</button>
                </a>
            </div>
            <div class="mx-auto order-0">
                <a href="/index"><img src="../../Adlister-Logo-Transparent.png" id="logo"></a>
            </div>
            <div class="navbar-nav ml-auto">
                <form action="/ads/search" method="POST" class="form-inline my-auto">
                    <input class="form-control mx-2" type="search" name="searchTerm" placeholder="Search ads" aria-label="Search">
                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </c:if>
    </div>
    </div>
</nav>