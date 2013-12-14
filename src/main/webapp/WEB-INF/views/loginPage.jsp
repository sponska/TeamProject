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
  				<strong>로그인에 실패하엿습니다.</strong><br>아이디와 비밀번호를 확인해주시기 바랍니다.
			</div>
	</c:when>
	<c:when test="${event=='findSuccess'}">
	<div class="alert alert-info">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>정보를 찾음.</strong><br>찾으시는 정보는 ${user }입니다.
			</div>
	</c:when>
	<c:when test="${event=='writeFailed'}">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>로그인 후에 가능!</strong><br>로그인하여 주시기 바랍니다.
			</div>
	</c:when>
	<c:when test="${event=='regiComplete' }">
	<div class="alert alert-info">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>환영합니다!</strong><br>회원가입이 완료 되었습니다.
			</div>
	</c:when>
	<c:when test="${event=='regiFailed' }">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>회원가입에 실패하였습니다.</strong><br>사용중인 아이디입니다.
			</div>
	</c:when>
	<c:when test="${event=='delUserSuccess' }">
	<div class="alert alert-info">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>회원탈퇴가 완료 되었습니다.</strong><br>다시 찾아주시기 바랍니다.
			</div>
	</c:when>
	<c:when test="${event=='deletedUser' }">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>탈퇴한 회원입니다.</strong><br>새로 회원가입하여주시기 바랍니다.
			</div>
	</c:when>
	<c:when test="${event=='resListFailed' }">
	<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>로그인 후에 이용 가능합니다.</strong><br>로그인 후에 다시 이용바랍니다.
			</div>
	</c:when>
	</c:choose>
			</td>
		</tr>
		<tr>
			<td><input class="span2" type="text" placeholder="ID" name="userId">&nbsp;&nbsp;<br><br>
			<input class="span2" type="password" placeholder="Password" name="userPwd">&nbsp;&nbsp;<br></td>
			<td><button type="submit" class="btn btn-primary">Login</button><br><br>
			<button type="button" class="btn" onclick="location.href='register'">회원가입</button><br></td>
		</tr>
		<tr>
			<td colspan="2"><br><button type="button" class="btn" onclick="location.href='findIdPage'">계정찾기</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <button type="button" class="btn" onclick="location.href='findPwdPage'">비밀번호찾기</button>
            </td>
        </tr>
			
	</table>

    </form>
    </center>
</body>