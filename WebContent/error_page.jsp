<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
img 
{
display: block;
margin-left: auto;
margin-right: auto;
}
</style>

<meta charset="EUC-KR">
<title>ERROR</title>
</head>
<body>
	<IMG SRC="./error_image.gif" >
	<h5 align="center" >사이트에 에러가 발생했습니다.</h5>
	<script>
	    setTimeout(function(){location.href='/ktrip/index.jsp';}, 3000);
	</script> 
</body>
</html>