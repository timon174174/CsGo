<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>
</head>
<body>
fdsf
<c:forEach var="user" items="${users}">
   ${user.name} <br/>
   <img src="${user.imageUrl}"><hr/>
</c:forEach>
</body>
</html>
