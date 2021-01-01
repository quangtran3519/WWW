<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://www.springframework.org/tags/form" prefix="form" %>
<script src="resources/JS/bootstrap.min.js"></script>
<base href="${pageContext.servletContext.contextPath }/">

<div class="container" style="position: relative;">
		<div class="row" style="background-color: #e1eeeb ;height: 65px;">
			<div id="logo" class="col-lg-2 " ><img src="resources/img/logo.png"/> </div>
			<div class="col-md-6" id="search">
				<form action="${pageContext.servletContext.contextPath }/timtiemView" method="post">
				<input id="txtTimKiem" type="text" name="search" size="35" placeholder="Hãy nhập tên sản phẩm cần tìm .." style="padding: 5px;    border-radius: 10px;">				
				<button class="btn btn-info"  >
			      <span class="glyphicon glyphicon-search"></span> Tìm kiếm
			    </button>								
				</form>
			</div>
			<div class="col-md-1" id="lienHe" style="margin-top: 16px"><p style="font-weight: bold; color: red">HOTLINE<br>190098765<p></div>
			<div class="col-md-1" id="dangnhap" style="margin-top: 16px;text-align: center;">
			<c:choose>
				<c:when  test="${tk1.tenTk== null }">
				<a href="dangnhapView"><span style="font-weight: bold;color: blue;">ĐĂNG NHẬP</span></a>
				</c:when>
				<c:when  test="${tk1.tenTk!= null }">
				
				<div class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="" >Xin chào ${tk1.tenTk} 
					</a>
						<ul class="dropdown-menu">
							<li><a href="tttaikhoanView">Thông tin tài khoản</a></li>
							<li><a href="doimatkhauView">Đổi mật khẩu</a></li>
							<li><a href="lichsudonhangView">Lịch sử đơn hàng</a></li>
							<li><a href="dangxuat">Thoát</a></li>
							
						</ul></div>
				<%-- <a href="thongtintaikhoan"><span style="font-weight: bold;color: blue;">Xin chào ${tk1.tenTk}</span></a>
				<a href="dangxuat"><span style="font-weight: bold;color: blue;">Đăng xuất</span></a> --%>
				</c:when>
			</c:choose>
				<%-- <c:if test="${tk.tenTk== null }" var="">
				<a href="dangnhapView"><span style="font-weight: bold;color: blue;">ĐĂNG NHẬP</span></a>
				</c:if>
				<c:if test="${tk.tenTk!= null } ">
				<a href="thongtintaikhoan"><span style="font-weight: bold;color: blue;">Xin chào ${tk.tenTk}</span></a>
				<a href="dangxuat"><span style="font-weight: bold;color: blue;">Đăng xuất</span></a>
				</c:if> --%>
			</div>
			<div class="col-md-2" id="giohang" style="margin-top: 16px;">
				<a href="giohangView"><img src="resources/img/giohang.jpg" style="color: gold" alt="giohang"></a>
				<span style="font-weight: bold;">GIỎ HÀNG</span>
			</div>
		</div>
	</div>