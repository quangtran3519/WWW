<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<base href="${pageContext.servletContext.contextPath }/">
<div class="container" style="position: relative;">
		<div class="row" style="background-color: #e1eeeb ;height: 65px;">
			<div id="logo" class="col-lg-2 " ><img src="resources/img/logo.png"/> </div>
			<div class="col-md-6" id="search">
				<form>
				<input id="txtTimKiem" type="text" name="search" size="40" placeholder="Bạn tìm gì..." style="padding: 5px;    border-radius: 10px;">				
				<button id="btnTimKiem"  type="button" class="btn btn-info">
			      <span class="glyphicon glyphicon-search"></span> Tìm kiếm
			    </button>								
				</form>
			</div>
			<div class="col-md-1" id="lienHe" style="margin-top: 16px"><p style="font-weight: bold; color: red">HOTLINE<br>190098765<p></div>
			<div class="col-md-1" id="dangnhap" style="margin-top: 16px;text-align: center;">
				<a href="dangnhapView"><span style="font-weight: bold;color: blue;">ĐĂNG NHẬP</span></a>
			</div>
			<div class="col-md-2" id="giohang" style="margin-top: 16px;">
				<a href="giohangView"><img src="resources/img/giohang.jpg" style="color: gold" alt="giohang"></a>
				<span style="font-weight: bold;">GIỎ HÀNG</span>
			</div>
		</div>
	</div>