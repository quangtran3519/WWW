<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
	 <script src="resources/JS/fotorama.js"></script>
	
	<title>QVCOMPUTER HOME </title>
	<jsp:include page="_head.jsp"></jsp:include>
	
</head>
<body>

<header class="header">
	<jsp:include page="_header.jsp"></jsp:include>
</header>

	<div  style="background-color: black;">
			<jsp:include page="_nav.jsp"></jsp:include>
				
			<div class="row">
				<div class="col-md-12">
					<div class="fotorama">
						<img src="resources/img/ads/ads1.jpg " width="100%" >
						<img src="resources/img/ads/ads2.png " width="100%" >
						<img src="resources/img/ads/ads3.png " width="100%" >
						<img src="resources/img/ads/ads4.png " width="100%" >
						<img src="resources/img/ads/ads5.png " width="100%" >
					</div>
				</div>
				
			</div>
	</div>
	<div>
		<section class="container" id="section" style="background-repeat: no-repeat;background-size: cover;">
				<div class="row">
					<div class="col-md-6"> 
						<img src="resources/img/bh.jpg " width="100%" height="250PX" >	
					</div>
					<div class="col-md-6"> 
						<img src="resources/img/giaohang.jpg " width="100%"height="250PX" >	
					</div>		
				</div>
				<div class="tool"><a href="">LAPTOP THEO NHU CẦU</a></div>	
				<div class="row" id="nhucau">
					<div class="col-md-3">
						<img src="resources/img/LAPGAME.png" href="" width="250px" >
					</div>
					<div class="col-md-3">
						<a href="laptopkythuat.html"><img src="resources/img/LAPKYTHUAT.png" width="250px"></a>
					</div>
					<div class="col-md-3">
						<img src="resources/img/LAPCAOCAP.png" href="" width="250px">
					</div>
					<div class="col-md-3">
						<img src="resources/img/LPMONGNHE.png" href="" width="250px">
					</div>
				</div>
				<div class="tool"><a href="pc.html">PC-WORKSTATION</a></div>	
				<div class="row">
					<div class="col-md-3" style="background-color: white;">
						<img src="resources/img/PC/pc1.webp" href="" width="250px" >
						<B>Giá : <i>15.999.000Đ</i></B><br>
						 <a href="">Mua Ngay</a>
					</div>
					<div class="col-md-3" style="background-color: white;">
						<img src="resources/img/PC/pc4.webp" href="" width="250px">
						<B>Giá : <i>24.999.000Đ</i></B><br>
						 <a href="">Mua Ngay</a>
					</div>
					<div class="col-md-3" style="background-color: white;">
						<img src="resources/img/PC/pc2.jpg" href="" width="250px">
						<B>Giá : <i>27.999.000Đ</i></B><br>
						 <a href="">Mua Ngay</a>
					</div>
					<div class="col-md-3" style="background-color: white;">
						<img src="resources/img/PC/pc3.jpg" href="" width="250px">
						<B>Giá : <i>12.999.000Đ</i></B><br>
						 <a href="">Mua Ngay</a>
					</div>
				</div>
			<div class="tool"><a href="">LINH KIỆN</a></div>	
			<div class="row" id="linhkien">
				<div class="col-md-3" style="background-color: white;">
					<a href="">VI XỬ LÝ</a>
					<img src="resources/img/linh kien/cpu.jpg"  width="250px" >
				</div>
				<div class="col-md-3" style="background-color: white;">
					<a href="danhsachlinhkien.html">BO MẠCH CHỦ
						<img src="resources/img/linh kien/main.jpg" width="250px" height="250px">
					</a>
				</div>
				<div class="col-md-3" style="background-color: white;">
					<a href="">CARD ĐỒ HỌA</a>
					<img src="resources/img/linh kien/vga.jpg" href="" width="250px" height="250px">
				</div>
				<div class="col-md-3" style="background-color: white;">
					<a href="">MÀN HÌNH</a>
					<img src="resources/img/linh kien/manhinh.jpg" href="" width="250px">
				</div>
			</div>
			<div class="tool"><a href="mousecomputer.html">PHỤ KIỆN</a></div>	
			<div class="row">
				<div class="col-md-3" style="background-color: white;">
					<a href="mousecomputer.html">BÀN PHÍM & CHUỘT
						<img src="resources/img/phu kien/bpchuot.webp" href="" width="100%"  height="250px">
					</a>
				</div>
				<div class="col-md-3" style="background-color: white;">
					<a href="">THIẾT BỊ MẠNG</a>
					<img src="resources/img/phu kien/ROUTER.webp" href="" width="250px" height="250px">
				</div>
				<div class="col-md-3" style="background-color: white;">
					<a href="">GHẾ GAMMING</a>
					<img src="resources/img/phu kien/ghegm.webp" href="" width="250px" height="250px">
				</div>
				<div class="col-md-3" style="background-color: white;"	>
					<a href="">CÁC THIẾT BỊ AUDIO</a>
					<img src="resources/img/phu kien/tainghe.webp" href="" width="250px"height="250px" >
				</div>
			</div>
		</section>
	</div>

	<footer class="container"> 
	<jsp:include page="_footer.jsp"></jsp:include>
	</footer>

</body>
</html> 