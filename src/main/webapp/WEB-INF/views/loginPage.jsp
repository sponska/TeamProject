<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
	<center>
	
	<form class="navbar-form" action="login" method="post">
	<table border="0">
		<tr>
			<td colspan="2" width="150px">
			<c:choose>
	<c:when test="${event=='loginFailed'}">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>�α��ο� �����Ͽ����ϴ�.</strong><br>���̵�� ��й�ȣ�� Ȯ�����ֽñ� �ٶ��ϴ�.
			</div>
	</c:when>
	<c:when test="${event=='findSuccess'}">
	<div class="alert alert-info">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>������ ã��.</strong><br>ã���ô� ������ ${user }�Դϴ�.
			</div>
	</c:when>
	<c:when test="${event=='writeFailed'}">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>�α��� �Ŀ� ����!</strong><br>�α����Ͽ� �ֽñ� �ٶ��ϴ�.
			</div>
	</c:when>
	<c:when test="${event=='regiComplete' }">
	<div class="alert alert-info">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>ȯ���մϴ�!</strong><br>ȸ�������� �Ϸ� �Ǿ����ϴ�.
			</div>
	</c:when>
	<c:when test="${event=='regiFailed' }">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>ȸ�����Կ� �����Ͽ����ϴ�.</strong><br>������� ���̵��Դϴ�.
			</div>
	</c:when>
	<c:when test="${event=='delUserSuccess' }">
	<div class="alert alert-info">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>ȸ��Ż�� �Ϸ� �Ǿ����ϴ�.</strong><br>�ٽ� ã���ֽñ� �ٶ��ϴ�.
			</div>
	</c:when>
	<c:when test="${event=='deletedUser' }">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>Ż���� ȸ���Դϴ�.</strong><br>���� ȸ�������Ͽ��ֽñ� �ٶ��ϴ�.
			</div>
	</c:when>
	<c:when test="${event=='resListFailed' }">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>�α��� �Ŀ� �̿� �����մϴ�.</strong><br>�α��� �Ŀ� �ٽ� �̿�ٶ��ϴ�.
			</div>
	</c:when>
	</c:choose>
			</td>
		</tr>
		<tr>
			<td><input class="span2" type="text" placeholder="ID" name="userId">&nbsp;&nbsp;<br><br>
			<input class="span2" type="password" placeholder="Password" name="userPwd">&nbsp;&nbsp;<br></td>
			<td><button type="submit" class="btn btn-primary">Login</button><br><br>
			<button type="button" class="btn" onclick="location.href='register'">ȸ������</button><br></td>
		</tr>
		<tr>
			<td colspan="2"><br><button type="button" class="btn" onclick="location.href='findIdPage'">����ã��</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <button type="button" class="btn" onclick="location.href='findPwdPage'">��й�ȣã��</button>
            </td>
        </tr>
			
	</table>

    </form>
    </center>
</body>