<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Information Account</title>
</head>
<body>
	<h3>Conta Registrada com sucesso</h3>
	<table cellpadding=1 cellspacing=1 border=1>
		<tr>
			<td>Id</td>
			<td>${account.id }</td>
		</tr>
		<tr>
			<td>Username</td>
			<td>${account.username }</td>
		</tr>
		<tr>
			<td>Password</td>
			<td>${account.password }</td>
		</tr>
		<tr>
			<td valign="top">Description</td>
			<td>${account.description }</td>
		</tr>
		<tr>
			<td valign="top">Gender</td>
			<td>${account.gender }</td>
		</tr>
		<tr>
			<td>Status</td>
			<td>${account.status }</td>
		</tr>
		<tr>
			<td>Languages</td>
			<td><c:forEach var="language" items="${account.languages }"> 
    	        ${language }
    	        <br>
			</c:forEach></td>
		</tr>
		<tr>
			<td>Role</td>
			<td>${account.role }</td>
		</tr>
	</table>
</body>
</html>