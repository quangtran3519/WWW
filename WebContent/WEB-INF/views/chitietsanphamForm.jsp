<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>${sp.tenSP }</title>
<base href="${pageContext.servletContext.contextPath }/">
<jsp:include page="_head.jsp"></jsp:include>
<script>
	$(document).ready(function() {
		$("#chon").click(function() {
			$("#xemthem").css("display", "inline");
			$("#chon").hide();
		});

	});
</script>

</head>
<body>
	<header class="header">
		<jsp:include page="_header.jsp"></jsp:include>

	</header>
	<div style="background-color: black;">
		<jsp:include page="_nav.jsp"></jsp:include>
	</div>
	<section class="container">
		<div class="row">
			<div style="color: white;">
				<a href="qvcomputer.html">TRANG CHỦ>></a> <a
					href="laptopkythuat.html">LAPTOP KỸ THUẬT>> </a>DELL 5593
			</div>
		</div>
		<div class="row">
			<img src="../img/LapTop/dell15/bannerdell.jpg" alt="" width="100%">
		</div>
		<div class="row">
			<div class="col-md-6">
				<h3 style="color: black;">Đặc điểm nổi bật của ${sp.tenSP } (
					${sp.maSP })</h3>
				<div class="fotorama">
					<img src="../img/LapTop/dell15/de1.jpg " width="100%" alt="">
					<img src="../img/LapTop/dell15/de2.jpg" width="100%" alt="">
					<img src="../img/LapTop/dell15/de3.jpg" width="100%" alt="">
					<img src="../img/LapTop/dell15/de4.jpg" width="100%" alt="">
					<img src="../img/LapTop/dell15/de5.jpg" width="100%" alt="">
					<img src="../img/LapTop/dell15/de6.jpg" width="100%" alt="">
					<img src="../img/LapTop/dell15/de7.jpg" width="100%" alt="">
					<img src="../img/LapTop/dell15/de8.jpg" width="100%" alt="">
					<img src="../img/LapTop/dell15/de9.jpg" width="100%" alt="">
					<img src="../img/LapTop/dell15/de10.jpg" width="100%" alt="">

				</div>

			</div>
			<div class="col-md-6" style="color: black;">
				<h3>
					<b> ${sp.tenSP } </b>
				</h3>
				<h4>Nhà sản xuất: ${sp.nhasanxuat.tenNhaSX }</h4>
				<h4>Xuất xứ: ${sp.nuocsanxuat.tenNuoc }</h4>
				<h4>Bảo hành: 12 tháng</h4>
				<h4>Màu: ${sp.mauSac.tenMau }</h4>
				<h3 class="text-danger">&#8902 GIÁ NIÊM YẾT : 17.999.000 đ</h3>
				<h3 class="text-danger">Quà tặng:</h3>
				<h3 class="text-primary">
					Túi chống sốc cao cấp trị giá 500.000đ
					</p>
					<h3 class="text-primary">
						Chuột Logitec G102 trị giá 550.000đ
						</p>
						<a href="themvaogiohang/${sp.maSP}"><button id="dh"
								class="btn btn-danger">THÊM VÀO GIỎ HÀNG</button></a>
			</div>
		</div>

		<div class="col-md-6">
			<video
				src="../video/Dell Inspiron N5593 Lap Top Siêu Sang, Mạnh Mẽ cho người dùng văn phòng.mp4"
				width="100%" controls></video>
			<h3>CẤU HÌNH CHI TIẾT</h3>
			<table>
				<tr class=" row">
					<td class="col-md-3">CPU</td>
					<td class="col-md-9">Intel Core i5 1035G1 1.0GHz up to 3.9GHz
						8MB</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">RAM</td>
					<td class="col-md-9">8GB DDR4 2666MHzB</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Ổ cứng</td>
					<td class="col-md-9">512GB PCIe NVMe</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Card đồ họa</td>
					<td class="col-md-9">NVIDIA GeForce MX230 2GB GDDR5 + Intel
						UHD Graphics</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Màn hình</td>
					<td class="col-md-9">15.6" FHD (1920 x 1080) Anti-Glare, LED
						Backlight</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Cổng giao tiếp</td>
					<td class="col-md-9">1x USB 3.1 Gen 1 Type-C, 2x USB 3.1 Gen 1
						Type-A, 1x USB 2.0, HDMI, RJ-45</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Ổ quang</td>
					<td class="col-md-9">None</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Audio</td>
					<td class="col-md-9">Waves MaxxAudio 3</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Đọc thẻ nhớ</td>
					<td class="col-md-9">SD Card Reader</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Chuẩn LAN</td>
					<td class="col-md-9">10/100/1000 Base T</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Chuẩn WIFI</td>
					<td class="col-md-9">802.11 AC</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Bluetooth</td>
					<td class="col-md-9">v4.2</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Webcam</td>
					<td class="col-md-9">HD Webcam</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Hệ điều hành</td>
					<td class="col-md-9">Windows 10 Home</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Pin</td>
					<td class="col-md-9">3 Cell 42WHr</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Trọng lượng</td>
					<td class="col-md-9">1.83 Kg</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Màu sắc</td>
					<td class="col-md-9">Silver</td>
				</tr>
				<tr class=" row">
					<td class="col-md-3">Kích thước</td>
					<td class="col-md-9">36.4x 24.9 x 1.8 (cm)</td>
				</tr>
			</table>
		</div>

		</div>
	</section>
	<div>
		<footer class="container">
			<jsp:include page="_footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>
