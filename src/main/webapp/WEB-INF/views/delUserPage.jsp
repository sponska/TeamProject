<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form class="navbar-form" method="get" action="delUser" name="delUserForm">
	<input type="hidden" name="userNum" value="${userNum }">
	<table align="center">
	<tr>
		<td align="right">�н�����</td>
		<td><input class="span2" type="password" name="userPwd"/></td>
	</tr>
	<tr>
		<td align="right">�н����� Ȯ��</td>
		<td><input class="span2" type="password" name="userPwd2"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input class="btn btn-primary" type="submit" value="ȸ��Ż��" />&nbsp;&nbsp;
		<input class="btn" type="button" value="���" onclick="location.href='main'"/>
	</table>
</form>
</body>
</html>