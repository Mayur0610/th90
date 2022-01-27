<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Panel</title>
</head>
<body>

	This is a user home page !!
	<br/>
	User Name : ${objUser.userName}	<br>
	User Password : ${objUser.userPasswd}
</body>
</html>