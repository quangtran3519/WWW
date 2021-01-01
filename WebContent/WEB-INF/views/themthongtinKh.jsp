<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
<meta charset="UTF-8">
<title>Thông tin khách hàng</title>
</head>
<body>
		<div style="color: red;">${message }</div>
		<form:form action="${pageContext.servletContext.contextPath }/updatettKH" method="post" modelAttribute="kh1">
			<br><form:input path="tenKH"/>
			<br><form:input path="sdt"/>
			<br><form:input path="email"/>
			<br><form:input path="diaChi"/>
			<br><form:input path="ngaysinh"/>
			<br><form:button>Cập nhập</form:button>
		</form:form>
</body>
</html>