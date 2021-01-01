<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri ="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath }/">
<title>Quản lý sản phẩm</title>
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
	
	<h3 id="titleql">Quản lý sản phẩm</h3>
	<button style="float:right;margin-bottom:20px;margin-right:80px;background-color: greenyellow;border-radius: 5px">
	<a href="themSPView" style="padding:25px; text-decoration: none">Thêm 1 sản phẩm mới</a></button>
	<table border="solid 1px black"  width= 1200px; border-collapse= collapse;>
		<tr>
			<th>Mã sản phẩm</th>
			<th>Tên sản phẩm</th>
			<th> Nước sản xuất</th>
			<th>Nhà sản xuất</th>
			<th>Màu sắc</th>
			<th>Loại</th>
			<th>Năm sản xuất</th>
			<th>Giá</th>	
			<th>Hình</th>	
			<th>Cập nhập</th>	
			<th>Xóa</th>			
		</tr>
		<c:forEach var="sp" items="${dsSanPham}">		
			<tr>
				<td>${sp.maSP}</td>
				<td>${sp.tenSP }</td>
				<td>${sp.nuocsanxuat.tenNuoc }</td>
				<td>${sp.nhasanxuat.tenNhaSX }</td>
				<td>${sp.mauSac.tenMau }</td>
				<td>${sp.loai.tenLoai}</td>
				<td>${sp.cauHinh.namSX}</td>
				<td>${sp.gia }</td>
				<td> <div>  <img src=" <c:url value="/resources/img/${sp.urlHinh}"></c:url> "  style="width: 80px; height: 80px;"/> </div> </td>
				<td> <a href="updateSPForm/${sp.maSP}">Cập nhập</a></td>
				<td> <a href="delSP/${sp.maSP}">Xóa</a> </td>
			</tr>	
		</c:forEach>
	</table>
	<footer style="margin-top:110px">
		<jsp:include page="_footer.jsp"></jsp:include>
	
	</footer>
</body>
</html>