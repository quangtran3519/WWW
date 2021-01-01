<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>LAPTOP DELL</title>
<meta charset="utf-8">
	<base href="${pageContext.servletContext.contextPath }/">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css" >
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="resources/css/fotorama.css">
	<script src="resources/JS/jquery.min.js"></script>
	<script src="resources/JS/bootstrap.min.js"></script>
	 <script src="resources/JS/fotorama.js"></script>
<script>
	$(document).ready(function() {
		$("#seemore").click(function() {
			$("#see").css("display", "inline");
			$("#thugon").css("display", "inline");
			$("#seemore").hide();
			$("#thugon").click(function() {
				$("#see").css("display", "none");
				$("#thugon").hide();
				$("#seemore").css("display", "inline");
			})
		});
	});
</script>
</head>
<body>
	<header class="header" style="position: fixed; top: 0px">
		<div class="container" style="position: relative;">
			<div class="row" style="background-color: gold; height: 65px;">
				<div id="logo" class="col-lg-2 ">
					<img src="../img/logo.png">
				</div>
				<div class="col-md-6" id="search">
					<form>
						<input id="txtTimKiem" type="text" name="search" size="40"
							placeholder="Bạn tìm gì..."
							style="padding: 5px; border-radius: 10px;">
						<button id="btnTimKiem" type="submit"
							style="padding: 5px; background-color: lightblue; color: blue; font-weight: bold; border-radius: 10px;">Tìm
							kiếm</button>
					</form>
				</div>
				<div class="col-md-1" id="lienHe" style="margin-top: 16px">
					<p style="font-weight: bold; color: red">
						HOTLINE<br>190098765
					<p>
				</div>
				<div class="col-md-1" id="dangnhap"
					style="margin-top: 16px; text-align: center;">
					<a href="dangnhap.html"><span
						style="font-weight: bold; color: blue;">ĐĂNG NHẬP</span></a>
				</div>
				<div class="col-md-2" id="giohang" style="margin-top: 16px;">
					<a href="formgiohang.html"><img src="../img/giohang.jpg"
						style="color: gold" alt="giohang"></a> <span
						style="font-weight: bold;">GIỎ HÀNG</span>
				</div>
			</div>
		</div>
		<div style="background-color: black;">
			<div class="container">
				<div class="row">
					<div class="col-md-12" style="height: 50px;">
						<nav class="navbar">
							<ul class="nav navbar-nav" style="font-weight: bold;">
								<li><a href="Home.html">TRANG CHỦ</a></li>
								<li><a href="gioithieu.html">GIỚI THIỆU</a></li>
								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="">LAPTOP_PC <span
										class="caret"></span>
								</a>

									<ul class="dropdown-menu">
										<li><a href="pc.html">PC-WORKSTATION</a></li>
										<li><a href="laptopkythuat.html">LAPTOP CHÍNH HÃNG</a></li>
										<li><a href="hangdell.html">LAPTOP DELL</a></li>
										<li><a href="#">LAPTOP MacBook</a></li>
										<li><a href="#">LAPTOP HP</a></li>
										<li><a href="#">LAPTOP ASUS</a></li>
									</ul></li>
								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="">LINH KIỆN & PHỤ KIỆN<span
										class="caret"></span>
								</a>
									<ul class="dropdown-menu">
										<li><a href="danhsachlinhkien.html">BO MẠCH CHỦ</a></li>
										<li><a href="#">VI XỬ LÝ</a></li>
										<li><a href="#">CARD ĐỒ HỌA</a></li>
										<li><a href="#">MÀN HÌNH</a></li>
										<li><a href="mousecomputer.html">CHUỘT VÀ BÀN PHÍM</a></li>
										<li><a href="#">THIẾT BỊ MẠNG</a></li>
										<li><a href="#">GHẾ GAMING</a></li>
										<li><a href="#">CÁC THIẾT BỊ AUDIO</a></li>
									</ul></li>
								<li><a href="dichvu.html">DỊCH VỤ</a></li>
								<li><a href="dieukhoan.html">ĐIỀU KHOẢN</a></li>
								<li><a href="">LIÊN HỆ</a></li>
							</ul>
						</nav>

					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="container" id="main">
		<div class="row"
			style="box-shadow: 0px 0px 15px 10px darkseagreen; margin-bottom: 15px;">
			<div class="col-md-2">
				<a href="hangdell.html"><img
					src="../img/LapTop/laptopkythuat/Dell44-b_34.jpg" width="56"
					height="30"></a>
			</div>
			<div class="col-md-2">
				<a href="laptopkythuat.html"><img
					src="../img/LapTop/laptopkythuat/Macbook44-b_41.png" width="108"
					height="30"></a>
			</div>
			<div class="col-md-2">
				<a href="laptopkythuat.html"><img
					src="../img/LapTop/laptopkythuat/Acer44-b_37.jpg" width="60"
					height="30"></a>
			</div>
			<div class="col-md-2">
				<a href="laptopkythuat.html"><img
					src="../img/LapTop/laptopkythuat/Asus44-b_35.jpg" width="60"
					height="30"></a>
			</div>
			<div class="col-md-2">
				<a href="laptopkythuat.html"><img
					src="../img/LapTop/laptopkythuat/HP-Compaq44-b_36.jpg" width="63"
					height="30"></a>
			</div>
			<div class="col-md-2">
				<a href="laptopkythuat.html"><img
					src="../img/LapTop/laptopkythuat/Lenovo44-b_36.jpg" width="74"
					height="30"></a>
			</div>
		</div>
		<div class="row">
			<div>
				<a href="Home.html">Trang chủ <span>></span></a> <span>DELL</span>
			</div>
		</div>
		<c:forEach var="sp" items="${listSP}">
			<div class="row">
				<a href="chitietsanphamView/${sp.maSP}"> <img src=" <c:url value="/resources/img/${sp.urlHinh}"></c:url>"
					alt="" width="250px"> <b>${sp.tenSP } </b>
					<p class="text-danger">${sp.gia }</p>
					<hr/>

					
				</a>
				<button  onclick="location.href='themvaogiohang/${sp.maSP}'"> THÊM VÀO GIỎ HÀNG</button>
				<div class="info-may">
					<ul>
						<li><label>Màn hình:</label> <span>${sp.cauHinh.manHinh}</span></li>
						<li><label>CPU:</label> <span>${sp.cauHinh.cpu}</span></li>
						<li><label>RAM:</label> <span>${sp.cauHinh.ram}</span></li>
						<li><label>VGA:</label> <span>${sp.cauHinh.cardDohoa}</span></li>
						<li><label>HĐH:</label> <span>${sp.cauHinh.hdh}</span></li>
						<li><label>Nặng:</label> <span>1.7 Kg</span></li>
					</ul>
				</div>
			</div>
		</c:forEach>



		<div
			style="background-image: url(../img/backgroundimg/footer.jpg); color: aliceblue; margin-top: 20px">
			<footer class="container">
				<div class="row">
					<div class="col-md-3">

						<h4>CÔNG TY MÁY TÍNH LAPTOP VQ COMPUTER</h4>
						<div>
							<b>Địa chỉ 1:</b> 12 Thân Nhân Trung, Phường 13, Quận Tân Bình,
							Hồ Chí Minh
						</div>
						<div>
							<b>Địa chỉ 2:</b> 12 Nguyễn Văn Bảo, Phường 4, Quận Gò vấp , Hồ
							Chí Minh
						</div>
						<div>
							<b>HotLine:</b> 0988888888
						</div>
						<div>
							<b>Email:</b> ckshqvlaptop@gmail.com
						</div>
					</div>
					<div class="col-md-3">
						<div id="hotro">
							<h3>HỖ TRỢ KHÁCH HÀNG</h3>
							<div>
								<a href="">Chính sách bảo hành </a>
							</div>
							<div>
								<a href="">Phương thức thanh toán </a>
							</div>
							<div>
								<a href="">Phương thức vận chuyển </a>
							</div>
							<div>
								<a href=""> Chính sách bán hàng </a>
							</div>
							<div>
								<a href="">Chính sách Bảo mật</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div id="follow">
							<h3>THEO DÕI CHÚNG TÔI</h3>
							<div>
								<a href="">Facbook </a>
							</div>
							<div>
								<a href="">Youtube</a>
							</div>
							<div>
								<a href=""> Tuyển dụng </a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div>
							<h3>BẢN ĐỒ CHỈ ĐƯỜNG</h3>
							<div>
								<a href=""><img id="chiduong"></a>
							</div>
						</div>
					</div>
				</div>
		</div>
		<div id="copyright"
			style="text-align: center; font-weight: bold; color: red">
			<h5>@BẢN QUYỀN THUỘC VỀ QVCOMPUTER</h5>
		</div>
		</footer>
	</div>
</body>
</html>
