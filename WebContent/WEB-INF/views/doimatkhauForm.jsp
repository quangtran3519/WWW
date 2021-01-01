<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>
</head>
<body>
			<div>${message} </div>
		<form:form action="${pageContext.servletContext.contextPath }/doimatkhau" method="post" modelAttribute="tk">
			<form:input path="matkhau"/>
			<input type="text">
			<form:button>Xác nhận</form:button>
		</form:form>
</body>
</html>