<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add User</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

<h1>Add user</h1>

<div class="container">
    <div class="row">

        <form method="post" action="${pageContext.request.contextPath}/add-user">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">@</span>
                </div>
                <input type="text" name="username" class="form-control" placeholder="Username"
                    aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3">
                <input type="submit" class="btn btn-primary">
            </div>
        </form>

        <c:if test="${USER_ADDED_OK}">
        <div class="alert alert-success" role="alert">User successfully added !</div>
        </c:if>

    </div>
</div>

</body>
</html>
