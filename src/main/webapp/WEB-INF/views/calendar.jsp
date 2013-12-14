<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='./resources/css/calendar/fullcalendar.css' />

<script type='text/javascript' src='./resources/js/calendar/jquery-1.5.2.min.js'></script>
<script type='text/javascript' src='./resources/js/calendar/jquery-ui-1.8.11.custom.min.js'></script>
<script type='text/javascript' src='./resources/js/calendar/fullcalendar.min.js'></script>
<script type='text/javascript'>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
			header: {
				left: '',
				center: 'title',
				right: 'prev, next today' //month,agendaWeek,agendaDay
			},
			editable: false, //수정을 허락할 것인지? true-허락
			events: [
			
				<c:forEach var="list" items="${list}">
				{
					title: '${list.roomNum}호 ${list.userName}',
					start: '${list.resDate}',
					color: '${list.color}',
					url: 'resInfo?resNum=${list.resNum}'
				},
				</c:forEach>
				{
				}
			]
		});
		
	});

</script>
<style type='text/css'>

	body {
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}

	#calendar {
		width: 900px;
		margin: 0 auto;
		}

</style>
</head>
<body>
<br></br>
<div id='calendar'></div>
</body>
</html>
