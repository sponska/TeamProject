<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>

<center>
<div class="container">
<table border="0" class="table table-hover">
	<tr class="warning" align="center">
		<td class="span1">ȸ����ȣ</td>
		<td class="span1">���̵�</td>
		<td class="span1" align="center">��й�ȣ</td>
		<td class="span1">ȸ���̸�</td>
		<td class="span2">��ȭ��ȣ</td>
		<td class="span2">��  ��</td>
		<td class="span2">�̸���</td>
		<td class="span1">ȸ��Ż��</td>
		<td class="span1">������</td>
		<td class="span2"></td>
	</tr>
	<c:forEach var="list" items="${list}">
	<form action="userUpdate" method="get">
	<tr>
		<td><input class="span1" type="text" name="userNum" value="${list.userNum }" readonly="readonly">
		</td>
		<td><input class="span1" type="text" name="userId" value="${list.userId }" readonly="readonly">
		</td>
		<td><input class="span1" type="password" name="userPwd" value="${list.userPwd }">
		</td>
		<td><input class="span1" type="text" name="userName" value="${list.userName }">
		</td>
		<td><input class="span2" type="text" name="userTel" value="${list.userTel }">
		</td>
		<td><input class="span2" type="text" name="userAddr" value="${list.userAddr }">
		</td>
		<td><input class="span2" type="text" name="userEmail" value="${list.userEmail }">
		</td>
		<td><input class="span1" type="text" name="userOut" value="${list.userOut }">
		</td>
		<td><input class="span1" type="text" name="admin" value="${list.admin }">
		</td>
		<td><input class="btn" type="submit" value="����">
		</td>
	</tr>
	</form>
	</c:forEach>

</table>
</div>
</center>
</body>
</html>