<%--
  Created by IntelliJ IDEA.
  User: nguyenthinhan2410
  Date: 3/19/21
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User management Application</title>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark">
        <div>
            <a href="" class="navbar-brand">
                User Management App
            </a>
        </div>
        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a> </li>

        </ul>

    </nav>
</header>
<br/>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${listUser}">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.mail}"/></td>
            <td>
                <a href="edit?id=<c:out value="${user.id}"/>">Edit</a>
                <a href="delete?id=<c:out value="${user.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>


</body>
</html>
