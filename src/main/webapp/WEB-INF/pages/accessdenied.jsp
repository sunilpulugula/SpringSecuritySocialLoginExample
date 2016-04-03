<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Access Denied Page</title>
</head>
<body>
    <h2> Access Denied </h2>
    <br/>${message}<br/>

    Click here for<a href="<c:url value="/login" />"> Login</a>
</body>
</html>