<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div style="background-color: black">
<div style="margin-left:65px">

	<div class="row">
		<div class="col-md-12" style="height: 50px;">
			<nav class="navbar">
				<ul class="nav navbar-nav" style="font-weight: bold;">
					<li><a href="laptopqv">TRANG CHỦ</a></li>
					
					
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown"> Danh mục <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li class="dropdown-submenu"><a class="test" tabindex="-1"
								href="#">LAPTOP THEO NHÀ SẢN XUẤT <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<c:forEach var="hang" items="${nhaSX}">
										<li><a tabindex="-1"
											href="laptoptheohangView/${hang.maNhaSX}">
												${hang.tenNhaSX }</a></li>
									</c:forEach>
								</ul></li>
							<li class="dropdown-submenu"><a class="test" tabindex="-1"
								href="#">LAPTOP THEO lOẠI <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<c:forEach var="loaiSP" items="${loaiSP}">
										<li><a tabindex="-1"
											href="laptoptheoLoaiView/${loaiSP.maLoai}">
												${loaiSP.tenLoai }</a></li>
									</c:forEach>

								</ul></li>
						</ul></li>
					
					
					

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="">LAPTOP_PC <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="pc.html">PC-WORKSTATION</a></li>
							<li><a href="laptopkythuat.html">LAPTOP CHÍNH HÃNG</a></li>
							<li><a href="laptoptheohangView">LAPTOP DELL</a></li>
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

					<li><a href="qlsanpham">Danh Sách Sản Phẩm</a></li>
					<li><a href="dieukhoan.html">ĐIỀU KHOẢN</a></li>
					<li><a href="gioithieuView">GIỚI THIỆU</a></li>
					<li><a href="">LIÊN HỆ</a></li>		
					
					<c:choose>
					<c:when  test="${tk1.quyen == 'User'}">
						
					 </c:when>	
					 	<c:when  test="${tk1.quyen=='Admin'}">
							<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="">Quản lý <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="pc.html">Sản Phẩm</a></li>
							<li><a href="laptopkythuat.html">Khách Hàng</a></li>
							<li><a href="laptoptheohangView">Hóa Đơn</a></li>
						</ul></li>	
								
					 </c:when>		
					
					</c:choose>
				</ul>
			</nav>

		</div>
	</div>
</div>
</div>
