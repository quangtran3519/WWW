<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<base href="${pageContext.servletContext.contextPath }/">
<meta charset="utf-8">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css" >
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="resources/css/fotorama.css">
	<script src="resources/JS/jquery.min.js"></script>
	<script src="resources/JS/bootstrap.min.js"></script>
	 <script src="resources/JS/fotorama.js"></script>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
.dropdown-submenu {
 position: relative;
}

.dropdown-submenu .dropdown-menu {
 top: 0;
 left: 100%;
 margin-top: -1px;
}
</style>
<script>
   $(document).ready(function(){
      $('.dropdown-submenu a.test').on("click", function(e){
         $(this).next('ul').toggle();
         e.stopPropagation();
         e.preventDefault();
         });
      });
</script>