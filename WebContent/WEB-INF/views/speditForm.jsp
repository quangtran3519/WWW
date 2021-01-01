<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@taglib uri ="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CHỈNH SỬA SẢN PHẨM</title>
<jsp:include page="_head.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="_header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="_nav.jsp"></jsp:include>
	</nav>
	<a href="${pageContext.servletContext.contextPath }/admin/qlsanpham">Quay lại trang quản lý</a>
	<h2 style="margin-left: 480px;">CHỈNH SỬA SẢN PHẨM</h2>
	<form:form action="${pageContext.servletContext.contextPath }/admin/updateSP" method="post" modelAttribute="sanpham">
	<table>
		<tr>
			<td>Mã sản phẩm:</td>
			<td><form:input path="maSP" readonly="true"/></td>
		</tr>
		<tr>
			<td>Tên sản phẩm:</td>
			<td><form:input path="tenSP"/><form:errors path="tenSP"></form:errors>  </td>
		</tr>
		<tr>
			<td>Nước sản xuất</td>			
			<td><form:select path="nuocsanxuat.maNuoc" items="${nuocSX}"  itemValue="maNuoc" itemLabel="tenNuoc"></form:select>
			</td>			
		</tr>
		<tr>
			<td>Nhà sản xuất</td>			
			<td><form:select path="nhasanxuat.maNhaSX" items="${nhaSX}" itemValue="maNhaSX" itemLabel="tenNhaSX"></form:select></td>			
		</tr>
		<tr>
			<td>Màu sắc</td>			
			<td><form:select path="mauSac.maMau" items="${mauSac}" itemValue="maMau" itemLabel="tenMau"></form:select></td>
			
		</tr>
		<tr>
			<td>Loại sản phẩm :</td>			
			<td><form:select path="loai.maLoai" items="${loaiSP}" itemValue="maLoai" itemLabel="tenLoai"></form:select></td>
			
		</tr>
		<tr>
			<td>Giá:</td>			
			<td><form:input path="gia"/> <form:errors path="gia"></form:errors>  </td>
			
		</tr>
		<tr>
		
			<td>Hình</td>			
			<td> <form:input path="urlHinh" type="text" value= "Hình" readonly="true"/>	
			
			  </td>
			  <tr>
			  	<td></td>	
				<td> <input type="file" name="photo"></td>
			<!-- <td> <input type="file"  value="urlHinh"> </td> -->
			
		</tr>
		<tr>	<td><b>Cấu hình</b></td>	</tr>
		<tr>
		
			<td>CPU</td>		
			<td><form:input path="cauHinh.cpu"/><form:errors path="cauHinh.cpu"></form:errors> </td>			
		</tr>
		<tr>	
			<td>Ram</td>		
			<td><form:input path="cauHinh.ram"/><form:errors path="cauHinh.ram"></form:errors>  </td>			
		</tr>
			<tr>	
			<td>Ổ cứng</td>		
			<td><form:input path="cauHinh.oCung"/> <form:errors path="cauHinh.oCung"></form:errors> </td>			
		</tr>
			<tr>	
			<td>Màn hình</td>		
			<td><form:input path="cauHinh.manHinh"/> <form:errors path="cauHinh.manHinh"></form:errors> </td>			
		</tr>
			<tr>	
			<td>Card đồ họa</td>		
			<td><form:input path="cauHinh.cardDohoa"/><form:errors path="cauHinh.cardDohoa"></form:errors>  </td>			
		</tr>
			<tr>	
			<td>Cổng kết nối</td>		
			<td><form:input path="cauHinh.congKetnoi"/> <form:errors path="cauHinh.congKetnoi"></form:errors> </td>			
		</tr>
			<tr>	
			<td>Hệ điều hành</td>		
			<td><form:input path="cauHinh.hdh"/> <form:errors path="cauHinh.hdh"></form:errors> </td>			
		</tr>
			<tr>	
			<td>Thiết kế</td>		
			<td><form:input path="cauHinh.thietKe"/> <form:errors path="cauHinh.thietKe"></form:errors> </td>			
		</tr>
			<tr>	
			<td>Kích thước</td>		
			<td><form:input path="cauHinh.kichThuoc"/><form:errors path="cauHinh.kichThuoc"></form:errors>  </td>			
		</tr>
			<tr>	
			<td>Năm sản xuất</td>		
			<td><form:input  path="cauHinh.namSX"/><form:errors path="cauHinh.namSX"></form:errors>  </td>			
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Lưu"> </td>		
		</tr>

	</table>
	
	</form:form>
	<div>${message }</div>
	
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>