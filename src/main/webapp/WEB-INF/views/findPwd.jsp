<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

</head>
<body>

<form class="navbar-form" action="findPwd" method="get">
<center>
	<table border="0">
	<tr>
		<td colspan="2">
	<c:choose>
	<c:when test="${event=='findFailed'}">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>정보찾기 실패하엿습니다.</strong><br>이름과 이메일을 다시 확인해주시기 바랍니다.
			</div>
	</c:when>
	</c:choose>
	</td>
	</tr>
	<tr>
		<td><input class="span2" type="text" placeholder="이름" name="userName">&nbsp;&nbsp;<br><br>
		<input class="span2" type="text" placeholder="이메일" name="userEmail">&nbsp;&nbsp;<br></td>
		<td><button type="submit" class="btn btn-primary">비밀번호찾기</button><br><br>
		<button type="button" class="btn" onclick="history.back()">뒤로가기</button><br></td>
	</tr>
</table>
</center>
</form>
</body>
</html>