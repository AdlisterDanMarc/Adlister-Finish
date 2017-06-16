<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="overlap-form-container text-center">
        <div class="form-container">
            <h1>Create a new Ad</h1>
            <hr>
        <form action="/ads/create" method="post" enctype="multipart/form-data">

            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" required>
            </div>

            <div>
                <p class="imgsuccess">${imgsuccess}</p>
                <label for="img">Image Upload</label>
                <input type="file" onchange="imgchange(event)" name="file"  id="img">
                <img id="images" />
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input id="phone" name="phone" class="form-control" type="text" required>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" required></textarea>
            </div>

            <input type="submit" class="btn btn-block btn-primary">
        </form>

      </div>
    </div>
    </div>
<script>

    function imgchange(event){
        $('#img').val(event.target.files[0].name);
    }

</script>
</body>
</html>
