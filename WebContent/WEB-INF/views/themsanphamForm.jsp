<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="_head.jsp"></jsp:include>
<style type="text/css">
#titlethem {
	text-align: center;
	font-size: 26px;
	font-weight: bold;
}


</style>
<title>Thêm sản phẩm mới</title>
</head>
<body>
	<header>
		<jsp:include page="_header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="_nav.jsp"></jsp:include>
	</nav>
	<a href="${pageContext.servletContext.contextPath }/qlsanpham"> Quay
		lại trang quản lý</a>
	<h3 id="titlethem">THÊM 1 SẢN PHẨM MỚI</h3>
	<form:form action="${pageContext.servletContext.contextPath }/themSP"
		method="post" modelAttribute="sanpham" enctype="multipart/form-data">
		<div style="width: 1000px;height:400px; margin_left:100px">

			<div style="float:left; width: 30%">
					<p>Tên sản phẩm:</p>
					<form:input path="tenSP" /> <form:errors path="tenSP"></form:errors>
				<br>
			
					<p>Nước sản xuất</p>
					<form:select path="nuocsanxuat.maNuoc" items="${nuocSX}"
							itemValue="maNuoc" itemLabel="tenNuoc"></form:select>
				<br>
			
					<p>Nhà sản xuất</p>
					<form:select path="nhasanxuat.maNhaSX" items="${nhaSX}"
							itemValue="maNhaSX" itemLabel="tenNhaSX"></form:select>
				<br>
				
					<p>Màu sắc</p>
					<form:select path="mauSac.maMau" items="${mauSac}"
							itemValue="maMau" itemLabel="tenMau"></form:select>

				<br>
				
					<p>Loại sản phẩm :</p>
					<form:select path="loai.maLoai" items="${loaiSP}"
							itemValue="maLoai" itemLabel="tenLoai"></form:select>

				<br>
				
					<p>Giá:</p>
					<form:input path="gia" /> <form:errors path="gia"></form:errors>
					

				<br>
				

					<p>Hình</p>
					<form:input path="urlHinh" type="text" value="Hình"
							readonly="true" />
				<br>
					<p></p>
					<input type="file" name="photo">
					<!-- <p> <input type="file"  value="urlHinh"> </p> -->

				<br>
			</div>
			<div style="float: left; width: 30%">
				
					<p><b>Cấu hình</b></p>
				<br>
				
					<p>CPU</p>
					<form:input path="cauHinh.cpu" /> <form:errors
							path="cauHinh.cpu"></form:errors>
				<br>

					<p>Ram</p>
					<form:input path="cauHinh.ram" /> <form:errors
							path="cauHinh.ram"></form:errors>
				<br>
				
					<p>Ổ cứng</p>
					<form:input path="cauHinh.oCung" /> <form:errors
							path="cauHinh.oCung"></form:errors>
				<br>
				
					
			</div>

			<div style="float: right; width: 40%">
				
				
				
					<p>Màn hình</p>
					<form:input path="cauHinh.manHinh" /> <form:errors
							path="cauHinh.manHinh"></form:errors>
				<br>
				
					<p>Card đồ họa</p>
					<form:input path="cauHinh.cardDohoa" /> <form:errors
							path="cauHinh.cardDohoa"></form:errors>
				<br>
				
					<p>Cổng kết nối</p>
					<form:input path="cauHinh.congKetnoi" /> <form:errors
							path="cauHinh.congKetnoi"></form:errors>
				<br>
				
					<p>Hệ điều hành</p>
					<form:input path="cauHinh.hdh" /> <form:errors
							path="cauHinh.hdh"></form:errors>
				<br>
				
					<p>Thiết kế</p>
					<form:input path="cauHinh.thietKe" /> <form:errors
							path="cauHinh.thietKe"></form:errors>
				<br>
				
					<p>Kích thước</p>
					<form:input path="cauHinh.kichThuoc" /> <form:errors
							path="cauHinh.kichThuoc"></form:errors>
				<br>
				
					<p>Năm sản xuất</p>
					<form:input path="cauHinh.namSX" /> <form:errors
							path="cauHinh.namSX"></form:errors>
				<br>
			</div>

		</div>
		<div>
				<input type="submit" value="Lưu"> <input type="reset"
					value="Xóa trắng">
			</div>
	</form:form>
	<div>${message }</div>
	

	<footer>
		<jsp:include page="_footer.jsp"></jsp:include>
	</footer>
</body>
</html>