<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Thanh toán</title>
	<meta charset="utf-8">
	
	<script>
		$(document).ready(function(){
		function validten(){
			var tk= $("#hoten").val().trim();
			var regex =/^[a-zA-Z0-9]*$/;
			if(tk==""){
				$("#tbten").html("*Tên không được bỏ trống");
				return false;
			}
			if(!regex.test(tk)){
				$("#tbten").html("*Tên chứa kí tự đặc biệt");
				return false;
			}
			$("#tbten").html("*");
			return true;
		}
		function validdc(){
			var mk= $("#diachi").val().trim();
			var regex =/^[a-zA-Z0-9]*$/;
			if(mk==""){
				$("#tbdc").html("*Địa chỉ không được bỏ trống");
				return false;
			}
			if(!regex.test(mk)){
				$("#tbdc").html("*Đỉa chỉ không chứa kí tự đặc biệt");
				return false;
			}
			
			$("#tbdc").html("*");
			return true;
		}
		function validRMK(){
			var mk= $("#mk").val().trim();
			var rmk= $("#rmk").val().trim();
			var regex =/^[a-zA-Z0-9]*$/;
			if(rmk==""){
				$("#tbrmk").html("*Nhập lại mật khẩu không được bỏ trống");
				return false;
			}
			if(!regex.test(mk)){
				$("#tbrmk").html("*Nhập lại  Mật khẩu không chứa kí tự đặc biệt");
				return false;
			}
			if(mk!= rmk){
				$("#tbrmk").html("* Mật lại mật khẩu sai");
				return false;
			}
			$("#tbrmk").html("*");
			return true;
		}
		$("#btncn").click( function(){
				
			alert("Thanh toán thành công , tiếp tục mua sắm tiếp nào");	
			location.assign("Home.html")
		});
	});
	</script>
</head>
<body>

	
<div class="container" id="main">
	<div class="row" style="text-align: center;">
		<p style="font-weight: bold;font-size: 28px">THANH TOÁN</p>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="row">
				<h2>LAPTOPQV</h2>
			</div>
			<div class="row">
				<span><a href="Home.html">Trang chủ</a>></span>
				<span><a href="formgiohang.html">Giỏ hàng</a></span>
				<span>>Thanh toán</span>
			</div>
			<div class="row">
				<h3>Thông tin giao hàng:</h3>
			</div>
			<div class="row">
				<form:form action="${pageContext.servletContext.contextPath }/thanhtoan" method="post" modelAttribute="kh" >
					<form:hidden path="maKH" value="${kh.maKH }"/>
					<form:label path="tenKH"  value="${kh.tenKH }"> ${kh.tenKH }</form:label><br/>
					<form:label path="sdt"  value="${kh.sdt }"> ${kh.sdt }</form:label><br/>
					<form:label path="email"  value="${kh.email }"> ${kh.email }</form:label><br/>
					<form:label path="tenKH"  value="${kh.diaChi }"> ${kh.diaChi }</form:label><br/>
					<form:button>Thanh toán</form:button>
				</form:form>
		
			</div>
			<div class="row" style="margin-top: 15px">
				<div style="width: 50%;text-align: left;float: left;">
					<p><a href="formgiohang.html"><span></span>Giỏ hàng</a></p>
				</div>
				<div style="width: 40%;float: right;">
					<button class="btn btn-primary" id="btncn">
						Thanh toán
					</button>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div>
				<table class="col-md-12" style="position: static;">
					<thead>
						
					</thead>
					<tbody>
						<c:forEach var="sp" items="${dsGioHang}">
						<tr>
							<td><a href="chitietsanphamView/${sp.sanPham.maSP}"><b> ${sp.sanPham.tenSP } </b></a></td>
							<td> ${sp.soluong} </td>
							<td>  ${sp.sanPham.gia } </td>							
						</tr>			
						</c:forEach>
					</tbody>
					<tfoot></tfoot>
				</table>
			</div>
			<div>
				<div style="margin-top: 10px">
					<div style="width: 50%;text-align: left;display: inline-block;">
						<input class="form-control" type="text" placeholder="Mã giảm giá" name="">
					</div>
					<div style="width: 40%;text-align: left;float: right;">
						<button class="btn btn-primary">
						Sử dụng
					</button>
					</div>
				</div>
			</div>
			<div style="text-align: right; margin-top: 20px; border: solid 1px gray">
				<span>Tạm tính:</span>
				<span style="margin-left: 72px;"><b>36,998,000 đ</b></span><br>
				<span>Phí vận chuyển:</span>
				<span style="margin-left: 102px;"><b>_</b></span>
			</div>
			<div style="text-align: right; margin-top: 20px;">
				<span>Tạm tính:</span>
				<span style="margin-left: 72px;"><b>36,998,000 đ</b></span><br>
			</div>
		</div>
	</div>
</div>

</body>
</html> 
</html>