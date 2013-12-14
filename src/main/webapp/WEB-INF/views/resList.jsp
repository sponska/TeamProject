<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="./resources/css/calendar/jquery-ui-1.10.3.custom.css" rel="stylesheet" />
<script type="text/javascript" src="./resources/js/calendar/jquery-1.9.1.min.js"></script>    
<script type="text/javascript" src="./resources/js/calendar/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="./resources/js/calendar/jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript" src="./resources/js/calendar.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>

<center>
<div class="container">
<table border="0" class="table table-hover">
	<tr class="warning">
		<td class="span1">주문번호</td>
		<td class="span1">방번호</td>
		<td class="span2">예약날짜</td>
		<td class="span1">회원이름</td>
		<td class="span2">전화번호</td>
		<td class="span2">이메일</td>
		<td class="span1">결제금액</td>
		<td class="span2">결제시간</td>
		<td class="span2">&nbsp;</td>
	</tr>
	<% int i=0; %>
	<c:forEach var="list" items="${list}">
	<form action="resUpdate" metdod="get">
	<%
	i++;
	String datepicker="datepicker"+i;
	%>
	<input class="span1" type="hidden" name="userNum" value="${list.userNum }">
	<tr>
		<td><input class="span1" type="text" name="resNum" value="${list.resNum }" readonly="readonly">
		</td>
		<td><select class="span1" name="roomNum" >
			<option value="${list.roomNum }">${list.roomNum }</option>
			<optgroup label="2층"> 
			<option value="201">201</option>
			<option value="202">202</option>
			<option value="203">203</option>
			<option value="204">204</option>
			</optgroup>
			<optgroup label="3층">
			<option value="301">301</option>
			<option value="302">302</option>
			<option value="303">303</option>
			<option value="304">304</option>
			</optgroup>
			<optgroup label="4층">
			<option value="401">401</option>
			<option value="402">402</option>
			<option value="403">403</option>
			<option value="404">404</option>
			</optgroup>
			<optgroup label="5층">
			<option value="501">501</option>
			<option value="502">502</option>
			<option value="503">503</option>
			<option value="504">504</option>
			</optgroup>
		</select>
		</td>
		<td><input class="span2" type="text" name="resDate" value="${list.resDate}" id="<%=datepicker%>">
		</td>
		<td><input class="span1" type="text" name="userName" value="${list.userName }">
		</td>
		<td><input class="span2" type="text" name="userTel" value="${list.userTel }" readonly="readonly">
		</td>
		<td><input class="span2" type="text" name="userEmail" value="${list.userEmail }" readonly="readonly">
		</td>
		<td><input class="span1" type="text" name="resSum" value="${list.resSum }" readonly="readonly">
		</td>
		<td><input class="span2" type="text" name="resTime" value="${list.resTime}" readonly="readonly">
		</td>
		<td class="span2"><input class="btn" type="submit" value="예약변경"><br>
		<input class="btn" type="button" value="예약취소" onclick="location.href='resDel?resNum=${list.resNum}'">
		</td>
	</tr>
	</form>
	</c:forEach>

</table>
</div>
</center>
</body>
</html>