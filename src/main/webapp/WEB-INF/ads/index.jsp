<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Welcome, <c:out value="${sessionScope.user.username}"/></h1>
    <h1>Here Are The Ads</h1>

    <c:forEach var="ad" items="${ads}">
    <div class="w3-container col-xs-3">

        <div class="cardcontainer">
            <div class="w3-card-4">
                <div class="w3-container w3-center w3-light-grey">
                    <p>${ad.title}</p>
                </div>
                <img src="https://www.w3schools.com/w3css/img_fjords.jpg" alt="Norway" style="width:100%">
                <div class="w3-container w3-center descriptionbox">
                    <p id="descriptionp">${ad.description}</p>
                </div>
                <div class="w3-container w3-center">
                    <hr>
                    <p>${ad.phone}</p>
                    <hr>
                </div>
                <div class="w3-container w3-center">
                    <p>Email will go here</p>
                    <hr>
                </div>
            </div>

        </div>
    </div>
    </c:forEach>


    <%--<c:forEach var="ad" items="${ads}">--%>
    <%--<div class="card" style="width: 20rem;">--%>
    <%--<img class="card-img-top" src="https://s-media-cache-ak0.pinimg.com/736x/cb/52/da/cb52da655324b02c050a489605e6f957.jpg" height="100" width="180" alt="Card image cap">--%>
    <%--<div class="card-block">--%>
    <%--<h4 class="card-title">${ad.title}</h4>--%>
    <%--<p class="card-text">${ad.description}</p>--%>
    <%--</div>--%>
    <%--<ul class="list-group list-group-flush">--%>
    <%--<li class="list-group-item">${ad.phone}</li>--%>
    <%--<li class="list-group-item">Email Goes Here</li>--%>
    <%--<li class="list-group-item">Location Goes Here</li>--%>
    <%--</ul>--%>
    <%--<div class="card-block">--%>
    <%--<a href="#" class="card-link">Specific Ad Link</a>--%>
    <%--<a href="#" class="card-link">Related Items</a>--%>
    <%--</div>--%>
    <%--</c:forEach>--%>
    <%--</div>--%>

    <%--<c:forEach var="ad" items="${ads}">--%>
    <%--<div class="col-md-6">--%>
    <%--<h2>${ad.title}</h2>--%>
    <%--<p>${ad.description}</p>--%>
    <%--<p>${ad.phone}</p>--%>
    <%--</div>--%>
    <%--</c:forEach>--%>
</div>

</body>
</html>
