
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <style type="text/css">
        #map-canvas{
            width: 350px;
            height: 350px;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <jsp:include page="/WEB-INF/partials/firePics.jsp"/>
    <h1 class="lister">Here is the ad:</h1>

    <%--<c:forEach var="ad" items="${ads}">--%>
    <%--<div class="col-md-6 ${ad.id}">--%>
    <%--<h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>--%>
    <%--<p>Price: ${param.value}</p>--%>
    <%--<p>Furniture Type: ${sessionScope.id}</p>--%>
    <%--<p>${ad.description}</p>--%>
    <%--</div>--%>
    <%--</c:forEach>--%>
    <div class="card text-center bg-transparent border-0 lister font-white">
        <div class="display-2">${title}</div>
        <br>
        <%--<p>AD ID: ${param.id}</p>--%>
        <div>${description}</div>
        <br>
        <div class="display-4">
            $${price}
        </div>
        <br>
        <div class="display-4">
            Furniture Type: ${image}
        </div>
    </div>

    <div class="card-group">
        <div class="card border bg-transparent mb-2" style="border: 2px dashed #fff !important;, display: inline-block !important;">
            <div class="card-body m-2 text-white">
                <div class="display-4 lister">Seller:</div>
                <div><img src="${seller_image}" alt="seller profile picture"></div>
                <div>${username}</div>
                <div>${home_phone}</div>
                <div>${cell}</div>
                <div>${email}</div>
            </div>
        </div>
        <div class="card border-0 bg-transparent" style="display: inline-block !important;">
            <!-------div to hold map--------------------->
            <div class="card-body" id="map-canvas"></div>
        </div>
    </div>
</div>
<!-------load the Google Maps API ----------->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBb1pBX7tNsVucdn6OQuC1mxSRJQ2qPpUs"></script>
<!-------script to show things on map-------->
<script type="text/javascript">
    (function() {
        "use strict";
        <%= request.getAttribute("latitude") %>
        <%= request.getAttribute("longitude") %>
        // var restaurants = [
        //     {
        //         name: "sapporo"
        //         lat:29.572130,
        //         lng:-98.597526
        //     }
        //     {
        //         name: "la panaderia"
        //     }
        //     {
        //         name: "piatti's"
        //     }
        // ];
        // Set our map options
        var mapOptions = {
            // Set the zoom level
            zoom: 8,
            tilt: 45,
            // This sets the center of the map at our location
            // center: {
            //     lat:  29.426791,
            //     lng: -98.489602
            // }
            center: {
                lat: ${latitude},
                lng: ${longitude}
            }
        };
        // Render the map
        var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
        var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
        var marker = new google.maps.Marker({
            position: mapOptions.center,
            map: map,
            // icon: iconBase + 'fishing.png',
            animation: google.maps.Animation.DROP
        });
        // var infowindow = new google.maps.InfoWindow({
        //     content: "<h3>Like, literally the best asian fusion place</h3>" +
        //         "<ul style='list-style-type:square; text-align:left'><li>Bento Boxes</li>" +
        //         "<li>Ramen</li>" +
        //         "<li>Sushi</li>" +
        //         "<li>MORE</li></ul>"
        // });
        //marker animation: bounce on click
        marker.addListener('click', toggleBounce);
        marker.addListener('click', function(){
            infowindow.open(map, marker);
        });
        function toggleBounce() {
            if (marker.getAnimation() !== null) {
                marker.setAnimation(null);
            } else {
                marker.setAnimation(google.maps.Animation.BOUNCE);
                marker.setAnimation(null);
            }
        }
    })();
</script>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>