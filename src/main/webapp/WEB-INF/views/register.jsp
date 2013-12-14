<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>
<form class="navbar-form" method="get" action="registerAction" name="register">
<table align="center">
	<tr>
		<td colspan="2" align="center"><h3>회 원 가 입</h3></td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td align="right">아이디</td>
		<td><input class="span2" type="text" name="userId">&nbsp;
		
		</td>
	</tr>
	<tr>
		<td align="right">패스워드</td>
		<td><input class="span2" type="password" name="userPwd"/></td>
	</tr>
	<tr>
		<td align="right">패스워드 확인</td>
		<td><input class="span2" type="password" name="userPwd2"/></td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td align="right">이 름</td>
		<td><input class="span2" type="text" name="userName"></td>
	</tr>
	<tr>
		<td align="right">연락처</td>
		<td><input class="span2" type="text" name="userTel">		
		</td>
	</tr>
	<tr>
		<td align="right">E-mail</td>
		<td><input class="span2" type="text" name="userEmail"></td>
	</tr>
	<tr>
		<td align="right">주 소</td>
		<td><input class="span4" type="text" name="userAddr" size="30"/>
		</td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td colspan="2" align="center">
		<input class="btn btn-primary" type="submit" value="회원가입" />&nbsp;&nbsp;
		<input class="btn" type="reset" value="다시입력"/>
		</td>
	</tr>
</table>
</form>

</body>
</html>