<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create user</title>
</head>
<body>
  <form method="post" action="/create-user-post">
    Steam Login : <input type="text" name="login"><br/>
    <input type="submit">
  </form>
</body>
</html>
