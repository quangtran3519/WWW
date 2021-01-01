<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	
	<title>Giỏ hàng của bạn</title>
	<base href="${pageContext.servletContext.contextPath }/">
	
	<jsp:include page="_head.jsp"></jsp:include>
<style type="text/css">
	th,td{
		text-align: center;
	}
	#titleql{
		text-align: center;
		font-size:26px;
		font-weight:bold;
		
	}
</style>
	
</head>
<body>
<header>
	<jsp:include page="_header.jsp"></jsp:include>
</header>
<nav style="background-color: black;" >
	<jsp:include page="_nav.jsp"></jsp:include>
</nav>
	
<div class="container" id="main">
	<div class="row" style="text-align: center;">
		<p style="font-weight: bold;font-size: 28px; margin-top:-100px">GIỎ HÀNG</p>
	</div>
	<div class="row" style="margin-top:-50px;" >
		<table border="solid 1px black"  width= 1200px; border-collapse= collapse;>
			<tr>
				<th>Sản phẩm</th>
				<th>Tên Sản phẩm</th>
				<th>Số lượng</th>
				<th>Giá tiền</th>
				<th>Hủy</th>
			</tr>
			
				<c:forEach var="sp" items="${dsGioHang}">
				<tr>
					<td><img src=" <c:url value="/resources/img/${sp.sanPham.urlHinh}"></c:url> " alt="" width="100px"></td>
					<td><a href="chitietsanphamView/${sp.sanPham.maSP}"><b> ${sp.sanPham.tenSP } </b></a></td>
					<td> ${sp.soluong} </td>
					<td>  ${sp.sanPham.gia } </td>
					<td><a href="xoakhoigiohang/ ${sp.sanPham.maSP}">Xóa</a></td>
				</tr>			
				</c:forEach>				
			
			
		</table>
	</div>

	<div style="text-align: right;">
		<a href="thanhtoanView"><button class="btn btn-primary" style="margin-top: 20px;">
			THANH TOÁN
		</button></a>
	</div>
	
</div>
<footer style="margin-top:155px">
		<jsp:include page="_footer.jsp"></jsp:include>
	
	</footer>
</body>
</html> 