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
  				<strong>����ã�� �����Ͽ����ϴ�.</strong><br>�̸��� �̸����� �ٽ� Ȯ�����ֽñ� �ٶ��ϴ�.
			</div>
	</c:when>
	</c:choose>
	</td>
	</tr>
	<tr>
		<td><input class="span2" type="text" placeholder="�̸�" name="userName">&nbsp;&nbsp;<br><br>
		<input class="span2" type="text" placeholder="�̸���" name="userEmail">&nbsp;&nbsp;<br></td>
		<td><button type="submit" class="btn btn-primary">��й�ȣã��</button><br><br>
		<button type="button" class="btn" onclick="history.back()">�ڷΰ���</button><br></td>
	</tr>
</table>
</center>
</form>
</body>
</html>