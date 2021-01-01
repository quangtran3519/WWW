<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập</title>
	<jsp:include page="_head.jsp"></jsp:include>
	<script>
		$(document).ready(function(){
		function validTK(){
			var tk= $("#taikhoan").val().trim();
			var regex =/^admin$/;
			if(tk==""){
				$("#tbtk").html("*Tài khoản không được bỏ trống");
				return false;
			}
			if(!regex.test(tk)){
				$("#tbtk").html("*Tài khoản không tồn tại hoặc nhập sai");
				return false;
			}
			$("#tbtk").html("*");
			return true;
		}
		function validMK(){
			var mk= $("#mk").val().trim();
			var regex =/^admin$/;
			if(mk==""){
				$("#tbmk").html("*mật khẩu không được bỏ trống");
				return false;
			}
			if(!regex.test(mk)){
				$("#tbmk").html("*Mật khẩu sai");
				return false;
			}
			
			$("#tbmk").html("*");
			return true;
		}

		$("#btndk").click( function(){
				if(!validTK()||!validMK())
					return false;	
                    location.assign("Home.html");
		});
	});
	</script>
</head>
<body >
<header class="header" style="position: fixed;top: 0px">
	<jsp:include page="_header.jsp"></jsp:include>
	<div  style="background-color: black;">
			<div class="container">
				<div class="row">
					<div class="col-md-12" style="height: 50px;">
						<nav class="navbar">
							<ul class="nav navbar-nav" style="font-weight: bold;">
								<li><a href="Home.html">TRANG CHỦ</a></li>
								<li><a href="gioithieu.html">GIỚI THIỆU</a></li>
								<li class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" href="">LAPTOP_PC <span class="caret"></span> </a>
									
									<ul class="dropdown-menu">
										<li><a href="pc.html">PC-WORKSTATION</a></li>
										<li><a href="laptopkythuat.html">LAPTOP CHÍNH HÃNG</a></li>
										<li><a href="hangdell.html">LAPTOP DELL</a></li>
										<li><a href="#">LAPTOP MacBook</a></li>
										<li><a href="#">LAPTOP HP</a></li>
										<li><a href="#">LAPTOP ASUS</a></li>
									</ul>
								</li>
								<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="">LINH KIỆN & PHỤ KIỆN<span class="caret"></span> </a>
									<ul class="dropdown-menu">
										<li><a href="danhsachlinhkien.html">BO MẠCH CHỦ</a></li>
										<li><a href="#">VI XỬ LÝ</a></li>
										<li><a href="#">CARD ĐỒ HỌA</a></li>
										<li><a href="#">MÀN HÌNH</a></li>
										<li><a href="mousecomputer.html">CHUỘT VÀ BÀN PHÍM</a></li>
										<li><a href="#">THIẾT BỊ MẠNG</a></li>
										<li><a href="#">GHẾ GAMING</a></li>
										<li><a href="#">CÁC THIẾT BỊ AUDIO</a></li>
									</ul>	
								</li>
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
<section class="container" id="main" >
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6" style="position: static;">
			<form class=" form" >
				<caption ><h3 >ĐĂNG NHẬP</h3></caption>
				<div class="row" >
					<label class="col-md-4" style="position: static;">Tài khoản </label>
					<div class="col-md-8" style="position: static;"><input type="text" id="taikhoan" placeholder="Bạn hãy nhập tài khoản" class="form-control" autocomplete="off"
						value="admin"><span class="text-danger" id="tbtk">*</span>
					 
					 </div>
				</div>
				<div class="row ">
					<label class="col-md-4" style="position: static;">Mật khẩu</label>
					<div class="col-md-8" style="position: static;"><input type="password" id="mk" placeholder=" Bạn hãy nhập mật khẩu" class="form-control" autocomplete="off"
						value="admin"><span class="text-danger" id="tbmk">*</span>
					 </div> 
					 
				</div>
				<div class="row ">
					<div class="col-md-4"></div>
					<div class="col-md-8" style="position: static;">
						<input type="button" id="btndk" value="Đăng nhập"  class="btn btn-success btn-block" >
					 </div>
                </div>
                <div class="row ">
					<div class="col-md-3" style="position: static;">
                        <a href="#">Quên mật khẩu ? </a>
                    </div>
					<div class="col-md-9" style="position: static;">
						Nếu bạn chưa có tài khoản <a href="formdangki.html">Ấn vào đây để đăng kí</a>
					 </div>
				</div>
			
			</form>
		</div>
		<div class="col-md-3"></div>
	</div>

</section>
<div style="background-image: url(../img/backgroundimg/footer.jpg); color: aliceblue;margin-top: 20px">
	<footer class="container"> 
	<div class="row">
		<div class="col-md-3">
		
		<h4>CÔNG TY MÁY TÍNH LAPTOP VQ COMPUTER</h4>
		<div><b>Địa chỉ 1:</b> 12 Thân Nhân Trung, Phường 13, Quận Tân Bình, Hồ Chí Minh</div>
		<div><b>Địa chỉ 2:</b> 12 Nguyễn Văn Bảo, Phường 4, Quận Gò vấp , Hồ Chí Minh</div>
		<div><b>HotLine:</b> 0988888888</div>
		<div><b>Email:</b> ckshqvlaptop@gmail.com</div>
		</div>
		<div class="col-md-3">
			<div id="hotro">
				<h3>HỖ TRỢ KHÁCH HÀNG</h3>
				<div><a href="">Chính sách bảo hành </a></div>
				<div><a href="">Phương thức thanh toán </a></div>
				<div><a href="">Phương thức vận chuyển </a></div>
				<div><a href=""> Chính sách bán hàng </a></div>
				<div><a href="">Chính sách Bảo mật</a></div>
			</div>
		</div>
		<div class="col-md-3">
			<div id="follow">
				<h3>THEO DÕI CHÚNG TÔI</h3>
				<div><a href="">Facbook </a></div>
				<div><a href="">Youtube</a></div>
				<div><a href=""> Tuyển dụng </a></div>
			</div>
		</div>
		<div class="col-md-3">
			<div>
				<h3>BẢN ĐỒ CHỈ ĐƯỜNG </h3>
				<div><a href=""><img src="resources/img/bando.PNG" style="width: 90%;height: 115px"></a></div>
			</div>
		</div>
		</div>
	</div>
	<div id="copyright" style="text-align:center;"> <h5 style="font-weight: bold;color: red">@BẢN QUYỀN THUỘC VỀ QVCOMPUTER</h5></div>
	</footer>
</div>
</body>
</html> 