<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>

	<jsp:include page="menu.jsp"></jsp:include>

	<h3>User List</h3>

	<p style="color: red;"></p>

	<h4>Search product:</h4>
	<html:form action="userList.do">
		<table border="0">
			<tr>
				<td>Nickname</td>
				<td><html:text property="nickname" name="userListForm"></html:text>
				<td><html:errors property="nickname" /></td>
				</td>
				
				<td>Age</td>
				<td><html:text property="age" name="userListForm"></html:text>
				<td><html:errors property="age" /></td>
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" value="Search" /> 
				<a href="userList.do">Cancel</a></td>
			</tr>
		</table>
	</html:form>

	<p />
	<p />

	<table border="1" cellpadding="5" cellspacing="1">
		<tr>
			<th>
			<a href="${pageContext.request.contextPath}/userList.do">Id</a>
			</th>
			<th>
			<a href="${pageContext.request.contextPath}/orderedListByNicknameAsc.do">Nickname</a>
			</th>
			<th>
			<a href="${pageContext.request.contextPath}/orderedListByFirstNameAsc.do">First Name</a>
			</th>
			<th>
			<a href="${pageContext.request.contextPath}/orderedListByAgeDesc.do">Age</a>
			</th>
			<th>
			<a href="${pageContext.request.contextPath}/orderedListByEmailAsc.do">Email</a>
			</th>
		</tr>

		<logic:iterate id="user" property="users"
			name="userListForm">
			<tr>
				<td><bean:write name="user" property="id" ignore="true" /></td>
				<td><bean:write name="user" property="nickname" ignore="true" /></td>
				<td><bean:write name="user" property="firstName" ignore="true" /></td>
				<td><bean:write name="user" property="age" ignore="true" /></td>
				<td><bean:write name="user" property="email" ignore="true" /></td>
			</tr>
		</logic:iterate>
	</table>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>