<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->

        <c:if test="${!sessionScope.isLoggedIn}">
            <div class="navbar-header">
                <a class="navbar-brand" href="/login">Bad Dog</a>
            </div>
        </c:if>


        <c:if test="${sessionScope.isLoggedIn}">
            <div class="navbar-header">
                <a class="navbar-brand" href="/ads">Bad Dog</a>
            </div>
        </c:if>

        <c:if test="${sessionScope.isLoggedIn}">
            <div class="col-sm-3 col-md-3" id="searchbar">
                <form action="/ads/results" class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit" id="searchbtn"><i
                                    class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </c:if>

        <ul class="nav navbar-nav navbar-right">
            <c:if test="${!sessionScope.isLoggedIn}">
                <li><a href="/login">Login</a></li>
                <li><a href="/register">Register</a></li>
            </c:if>


            <c:if test="${sessionScope.isLoggedIn}">
                <li><a href="/logout">Logout</a></li>
                <li><a href="/ads/create">Create Ad</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
