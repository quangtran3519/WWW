<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Kết quả tìm kiếm</title>

<base href="${pageContext.servletContext.contextPath }/">
<jsp:include page="_head.jsp"></jsp:include>
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
	<header>
		
			<jsp:include page="_header.jsp"></jsp:include>
	
		<nav style="background-color: black;">
			<jsp:include page="_nav.jsp"></jsp:include>
		</nav>
	</header>
	<div class="container">
	
	<div class="row">
	<c:forEach var="sp" items="${listSP}">
		<div class="row">
			<a href="chitietsanphamView/${sp.maSP}"> <img
				src=" <c:url value="/resources/img/${sp.urlHinh}"></c:url>" alt=""
				width="250px"> <b>${sp.tenSP } </b>
				<p class="text-danger">${sp.gia }</p>
				<hr />


			</a>
			<button onclick="location.href='themvaogiohang/${sp.maSP}'">
				THÊM VÀO GIỎ HÀNG</button>
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

	</div>
	</div>
	
	<footer class="container">
			<jsp:include page="_footer.jsp"></jsp:include>
	</footer>
</body>
</html>
