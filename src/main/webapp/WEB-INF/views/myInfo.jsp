<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>

<form class="navbar-form" method="get" action="userUpdate" name="myInfo">
<table align="center">
	<tr>
		<td colspan="2" align="center">
		
		<c:if test="${message=='updateFailed'}">
			<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>������������!</strong><br> �ٽ� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�.
			</div>
		</c:if>
		<c:if test="${message=='updateSuccess'}">
			<div class="alert alert-info">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>���������Ϸ�!</strong><br> ������ �����Ǿ����ϴ�.
			</div>
		</c:if>
		
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center"><h3>ȸ �� �� ��</h3></td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td align="right">���̵�</td>
		<td><input class="span2" type="text" name="userId" readonly="readonly" value="${vo.userId }">&nbsp;
		<input type="hidden" name="userNum" value="${vo.userNum }">
		</td>
	</tr>
	<tr>
		<td align="right">�н�����</td>
		<td><input class="span2" type="password" name="userPwd"/></td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td align="right">�� ��</td>
		<td><input class="span2" type="text" name="userName" value="${vo.userName }"></td>
	</tr>
	<tr>
		<td align="right">����ó</td>
		<td><input class="span2" type="text" name="userTel" value="${vo.userTel }">		
		</td>
	</tr>
	<tr>
		<td align="right">E-mail</td>
		<td><input class="span2" type="text" name="userEmail" value="${vo.userEmail }"></td>
	</tr>
	<tr>
		<td align="right">�� ��</td>
		<td><input class="span4" type="text" name="userAddr" value="${vo.userAddr }"/>
		</td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td colspan="2" align="center">
		<input class="btn btn-primary" type="submit" value="��������" />&nbsp;&nbsp;
		<input class="btn" type="button" value="���" onclick="location.href='main'"/>
		<input class="btn" type="button" value="ȸ��Ż��" onclick="location.href='delUserPage?userNum=${vo.userNum}'"/>
		</td>
	</tr>
	
</table>
</form>

</body>
</html>