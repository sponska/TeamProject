<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="./resources/css/calendar/jquery-ui-1.10.3.custom.css" rel="stylesheet" />
<script type="text/javascript" src="./resources/js/calendar/jquery-1.9.1.min.js"></script>    
<script type="text/javascript" src="./resources/js/calendar/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="./resources/js/calendar/jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript" src="./resources/js/calendar.js"></script>
<script> 
 function reload(roomnum){ 
	 location.href="resInsert?roomNum="+roomnum;} 
</script> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>예약</title>
</head>
<body>
<div class="container">
	<form action="resInsertAction" method="post">
		<center>
			<table class="table table-hover">
				<tr>
					<td><input type="hidden" name="userNum"	value="${user.userNum }"><b>이름</b></td>
					<td><input class="span2" type="text" name="userName" value="${user.userName }"></td>
					<td rowspan=6><img src="./resources/img/room/room${room.roomNum }_1.jpg" width="500"
						height="350" border="0"></td>
				</tr>

				<tr>
					<td><b> 방번호</b></td>
						<td><select onChange="reload(roomNum.options[roomNum.selectedIndex].value)" class="span2" name="roomNum" >
							<option value="${room.roomNum }">${room.roomNum }</option>
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
					</select></td>

				</tr>
				<tr>
					<td><b> 가격</b></td>
					<td><input class="span2" type="text" name="resSum" value="${room.roomPrice }" readonly="readonly">
					</td>
				</tr>

				<tr>
					<td><b>예약날짜</b></td>
					<td><input class="span2" type="text" name="resDate" id="datepicker1"></td>
				</tr>
			</table>
		</center>
		<p>
		<center>
			<table border="0" align="center">

				<tr>
					<td><input class="btn btn-primary"type="submit" value="예약하기">
					</td>
					<td><input class="btn" type="reset" value="  취소  "></td>
				</tr>
			</table>
		</center>
	</form>
</div>
</body>
</html>