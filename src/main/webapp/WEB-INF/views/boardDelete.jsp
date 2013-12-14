<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function boalist(){
	location.href="boardList.do?";
}
</script>
</head>
<body>
	<form method="post" name="actionform" action="boardDeleteaction">
	<center>
		글을 삭제 합니다.
		<input type="submit" value="삭제 "/>&nbsp;
		<input type="button" name="list" value="목록" onclick="window.close('boaList()')"/>
	</center>
	</form>
</body>
</html>