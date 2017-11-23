<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Homeside Locations</title>

        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <style>
            #map {
                height: 400px;
                width: 100%;
            }
        </style>        
    </head>
    <body>
        <div class="container">
            <img src="${pageContext.request.contextPath}/images/2.png" width="200px"/>
            <h1 style="color:#FD7A40">Challenge 1: MTV Cribs - Homeside Edition</h1>
            <p style="color:#3FAEF4">These</p>
            <p style="color:#7FCC29">are</p>
            <p style="color:#C555CF">secondary</p>
            <p style="color:#565659">colors. I'm definitely not a UI guy. Glad this doesn't have to be pretty.</p>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active">
                        <a href="${pageContext.request.contextPath}/index.jsp">
                            <img src="${pageContext.request.contextPath}/images/1.png" width="25px"/>
                        </a>
                    </li>
                </ul>    
            </div>
            <div id="map"></div>
        </div>

        <script>
            function initMap() {
                var mobile = {lat: 30.666215, lng: -88.191244};
                var tampa = {lat: 27.968816, lng: -82.569873};
                var madison = {lat: 33.596831, lng: -83.470692};
                var rockville = {lat: 39.109114, lng: -77.189995};
                var charlotte = {lat: 35.208756, lng: -80.855082};
                var durham = {lat: 35.917395, lng: -78.961678};
                var raleigh = {lat: 35.835577, lng: -78.689429};
                var cleveland = {lat: 41.318853, lng: -81.624399};
                var cincinatti = {lat: 39.231144, lng: -84.377362};
                var columbus = {lat: 40.092022, lng: -82.815828};
                var stow = {lat: 41.157539, lng: -81.444267};
                var stateCollege = {lat: 40.787117, lng: -77.827982};
                var fairfax = {lat: 38.865770, lng: -77.365246};
                var reston = {lat: 38.955398, lng: -77.364407};

                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 5,
                    center: raleigh
                });

                var marker1 = new google.maps.Marker({
                    position: mobile,
                    map: map
                });
                var marker2 = new google.maps.Marker({
                    position: tampa,
                    map: map
                });
                var marker3 = new google.maps.Marker({
                    position: madison,
                    map: map
                });
                var marker4 = new google.maps.Marker({
                    position: rockville,
                    map: map
                });
                var marker5 = new google.maps.Marker({
                    position: charlotte,
                    map: map
                });
                var marker6 = new google.maps.Marker({
                    position: durham,
                    map: map
                });
                var marker7 = new google.maps.Marker({
                    position: raleigh,
                    map: map
                });
                var marker8 = new google.maps.Marker({
                    position: cleveland,
                    map: map
                });
                var marker9 = new google.maps.Marker({
                    position: cincinatti,
                    map: map
                });
                var marker10 = new google.maps.Marker({
                    position: columbus,
                    map: map
                });
                var marker11 = new google.maps.Marker({
                    position: stow,
                    map: map
                });
                var marker12 = new google.maps.Marker({
                    position: stateCollege,
                    map: map
                });
                var marker13 = new google.maps.Marker({
                    position: fairfax,
                    map: map
                });
                var marker14 = new google.maps.Marker({
                    position: reston,
                    map: map
                });

                var contentString1 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Mobile</h1>' +
                        '<div id="bodyContent">' +
                        '<p>DeMarcus Cousins is from Mobile</p>' +
                        '</div>' +
                        '</div>';
                var infowindow1 = new google.maps.InfoWindow({
                    content: contentString1
                });
                marker1.addListener('click', function () {
                    infowindow1.open(map, marker1);
                });

                var contentString2 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Tampa</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Some place in Florida</p>' +
                        '</div>' +
                        '</div>';
                var infowindow2 = new google.maps.InfoWindow({
                    content: contentString2
                });
                marker2.addListener('click', function () {
                    infowindow2.open(map, marker2);
                });

                var contentString3 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Madison</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Not too far from Atlanta</p>' +
                        '</div>' +
                        '</div>';
                var infowindow3 = new google.maps.InfoWindow({
                    content: contentString3
                });
                marker3.addListener('click', function () {
                    infowindow3.open(map, marker3);
                });

                var contentString4 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Rockville</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Some place in MD</p>' +
                        '</div>' +
                        '</div>';
                var infowindow4 = new google.maps.InfoWindow({
                    content: contentString4
                });
                marker4.addListener('click', function () {
                    infowindow4.open(map, marker4);
                });

                var contentString5 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Charlotte</h1>' +
                        '<div id="bodyContent">' +
                        '<p>I used to live and work in Charlotte</p>' +
                        '</div>' +
                        '</div>';
                var infowindow5 = new google.maps.InfoWindow({
                    content: contentString5
                });
                marker5.addListener('click', function () {
                    infowindow5.open(map, marker5);
                });

                var contentString6 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Durham</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Also known as Dirty Durham. A foul place called Dook\n\
                        is here. Their basketball team is coached by a rat face. \n\
                        Chapel-Hill is a better place to be. </p>' +
                        '</div>' +
                        '</div>';
                var infowindow6 = new google.maps.InfoWindow({
                    content: contentString6
                });
                marker6.addListener('click', function () {
                    infowindow6.open(map, marker6);
                });

                var contentString7 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Raleigh</h1>' +
                        '<div id="bodyContent">' +
                        '<p>This is my hometown</p>' +
                        '</div>' +
                        '</div>';
                var infowindow7 = new google.maps.InfoWindow({
                    content: contentString7
                });
                marker7.addListener('click', function () {
                    infowindow7.open(map, marker7);
                });

                var contentString8 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Cleveland</h1>' +
                        '<div id="bodyContent">' +
                        '<p>The Cavs are solid. The Browns though...</p>' +
                        '</div>' +
                        '</div>';
                var infowindow8 = new google.maps.InfoWindow({
                    content: contentString8
                });
                marker8.addListener('click', function () {
                    infowindow8.open(map, marker8);
                });

                var contentString9 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Cincinatti</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Is Cinci forgotten in the Cleveland vs Columbus debate?</p>' +
                        '</div>' +
                        '</div>';
                var infowindow9 = new google.maps.InfoWindow({
                    content: contentString9
                });
                marker9.addListener('click', function () {
                    infowindow9.open(map, marker9);
                });

                var contentString10 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Columbus</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Some place where Matt, Mike, Sean, Burke, and Will work. \n\
                        Rumor has it that they are now at a place in New Albany </p>' +
                        '</div>' +
                        '</div>';
                var infowindow10 = new google.maps.InfoWindow({
                    content: contentString10
                });
                marker10.addListener('click', function () {
                    infowindow10.open(map, marker10);
                });

                var contentString11 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Stow</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Some place in Ohio</p>' +
                        '</div>' +
                        '</div>';
                var infowindow11 = new google.maps.InfoWindow({
                    content: contentString11
                });
                marker11.addListener('click', function () {
                    infowindow11.open(map, marker11);
                });

                var contentString12 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">State College</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Some place in PA</p>' +
                        '</div>' +
                        '</div>';
                var infowindow12 = new google.maps.InfoWindow({
                    content: contentString12
                });
                marker12.addListener('click', function () {
                    infowindow12.open(map, marker12);
                });

                var contentString13 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Fairfax</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Some place in VA. Just down the road from Reston. </p>' +
                        '</div>' +
                        '</div>';
                var infowindow13 = new google.maps.InfoWindow({
                    content: contentString13
                });
                marker13.addListener('click', function () {
                    infowindow13.open(map, marker13);
                });

                var contentString14 = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Reston</h1>' +
                        '<div id="bodyContent">' +
                        '<p>Some place in VA. Just down the road from Fairfax.</p>' +
                        '</div>' +
                        '</div>';
                var infowindow14 = new google.maps.InfoWindow({
                    content: contentString14
                });
                marker14.addListener('click', function () {
                    infowindow14.open(map, marker14);
                });

            }
        </script>

        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC84zAyiffzxBzIApQHoin_5xQUp83eHSo&callback&callback=initMap">
        </script>
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>