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

<div class="container">
    <!-- TODO: use c:out here -->
    <h1>Welcome, <c:out value="${sessionScope.user.username}!"/></h1>

    <c:forEach var="ad" items="${ads}">
    <div class="row">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </div>

    <%--<div class="row">--%>
        <%--<div class="col-sm-12">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-3">--%>
                    <%--<div class="well">--%>
                        <%--<h4 class="text-danger"><span class="label label-danger pull-right">- 9%</span> New Users </h4>--%>
                    <%--</div>--%>
                <%--</div>--%>
    </c:forEach>

</div>

</body>
</html>
