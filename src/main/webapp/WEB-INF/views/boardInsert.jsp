<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function boalist() {
		location.href = "boardList";
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>

		<h2>
			<b>NOTICE</b>
		</h2>
		<form method="post" action="boardInsertaction">
			<table border="0" align="center">
				<tr>
					<th>제 목</th>
					<td><input type="text" name="boatitle" class="span6"  size="69"></td>
				</tr>
				<tr>
					<th>내 용</th>
					<td><textarea rows="20" class="span6"   name="boacontent"></textarea></td>
				</tr>
				<tr>
					<td align="right" colspan="2">
					<input type="submit" class="btn btn-primary" value="등록"/>&nbsp; 
					<input type="reset" value="취소" class="btn" />&nbsp;
					<input type="button" name="list" class="btn" value="목록" onclick="boalist()" /></td>
				</tr>
					</table>

					</form>
					</center>
</body>
</html>