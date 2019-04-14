<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Registrar Conta</title>
</head>
<body>

	<h3>Registrar Conta</h3>
	<s:form method="post" modelAttribute="account" value="account"
		action="${pageContext.request.contextPath }/account/save">
		<table cellpadding=1 cellspacing=1 border=1 >
			<tr>
				<td>Username</td>
				<td><s:input path="username"  value="username"/></td>
			</tr>
			<tr>
				<td valign="top">Password</td>
				<td><s:password path="password" /></td>
			</tr>
			<tr>
				<td valign="top">Description</td>
				<td><s:textarea path="description" cols="20" row="5" /></td>
			</tr>
			<tr>
				<td valign="top">Gender</td>
				<td><s:radiobutton path="gender" value="male" /> Male <br>
					<s:radiobutton path="gender" value="female" /> Female</td>
			</tr>
			<tr>
				<td>Status</td>
				<td><s:checkbox path="status" /></td>
			</tr>
			<tr>
				<td>Languages</td>
				<td><s:checkboxes path="languages" items="${languages }"
						itemLabel="name" itemValue="id"   /></td>
			</tr>  			
			<tr>
				<td>Role</td>
				<td><s:select path="role" items="${roles }" itemLabel="name"
						itemValue="id"></s:select></td>
			</tr> 
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Save"> <s:hidden
						path="id" /></td>
			</tr> 			 															
		</table>	
 	</s:form>
</body>
</html>