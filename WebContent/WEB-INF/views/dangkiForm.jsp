<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
	<title>Đăng ký tài khoản</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="../css/bootstrap.min.css" >
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<script src="../JS/jquery.min.js"></script>
	<script src="../JS/bootstrap.min.js"></script>

</head>
<body >

				<h3 >ĐĂNG KÍ TÀI KHOẢN</h3>
				<form:form action="dangki"  method="post" modelAttribute="tk">
					Tên tài khoản <form:input path="tenTk"/>
					<br>Mật khẩu <form:input path="matkhau"/>
						<br>Nhập lại mật khẩu <input type="text" id ="rmk" >
					<br><form:button>Đăng kí</form:button>
				</form:form>
</body>
</html> 