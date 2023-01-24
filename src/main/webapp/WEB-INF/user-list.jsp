<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

<h1>User</h1>

<div class="container">
    <div class="row">
        <div class="col-8 offset-2">

        <c:forEach items="${Users}" var="user">
            <p>${user.firstname} - </p>
        </c:forEach>

        </div>
    </div>

</div>

</body>
</html>
