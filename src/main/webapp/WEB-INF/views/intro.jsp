<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="./resources/css/slidecss/style.css" />
		<script src="./resources/js/modernizr.custom.63321.js"></script>

	</head>
	<body>
	
		<div class="container">	
			
			<div class="main">
				<div id="mi-slider" class="mi-slider">
					<ul>
						<li><a href="floor?floor=2"><img src="./resources/img/room/room201_1.jpg" alt="img01"><h4>201호</h4></a></li>
						<li><a href="floor?floor=2"><img src="./resources/img/room/room202_1.jpg" alt="img02"><h4>202호</h4></a></li>
						<li><a href="floor?floor=2"><img src="./resources/img/room/room203_1.jpg" alt="img03"><h4>203호</h4></a></li>
						<li><a href="floor?floor=2"><img src="./resources/img/room/room204_1.jpg" alt="img04"><h4>204호</h4></a></li>
					</ul>
					<ul>
						<li><a href="floor?floor=3"><img src="./resources/img/room/room301_1.jpg" alt="img05"><h4>301호</h4></a></li>
						<li><a href="floor?floor=3"><img src="./resources/img/room/room302_1.jpg" alt="img06"><h4>302호</h4></a></li>
						<li><a href="floor?floor=3"><img src="./resources/img/room/room303_1.jpg" alt="img07"><h4>303호</h4></a></li>
						<li><a href="floor?floor=3"><img src="./resources/img/room/room304_1.jpg" alt="img08"><h4>304호</h4></a></li>
					</ul>
					<ul>
						<li><a href="floor?floor=4"><img src="./resources/img/room/room401_1.jpg" alt="img09"><h4>401호</h4></a></li>
						<li><a href="floor?floor=4"><img src="./resources/img/room/room402_1.jpg" alt="img10"><h4>402호</h4></a></li>
						<li><a href="floor?floor=4"><img src="./resources/img/room/room403_1.jpg" alt="img11"><h4>403호</h4></a></li>
						<li><a href="floor?floor=4"><img src="./resources/img/room/room404_1.jpg" alt="img12"><h4>404호</h4></a></li>
					</ul>
					<ul>
						<li><a href="floor?floor=5"><img src="./resources/img/room/room501_1.jpg" alt="img13"><h4>501호</h4></a></li>
						<li><a href="floor?floor=5"><img src="./resources/img/room/room502_1.jpg" alt="img14"><h4>502호</h4></a></li>
						<li><a href="floor?floor=5"><img src="./resources/img/room/room503_1.jpg" alt="img15"><h4>503호</h4></a></li>
						<li><a href="floor?floor=5"><img src="./resources/img/room/room504_1.jpg" alt="img16"><h4>504호</h4></a></li>
					</ul>
					<nav>
						<a href="#">2층</a>
						<a href="#">3층</a>
						<a href="#">4층</a>
						<a href="#">5층</a>
					</nav>
				</div>
			</div>
			
		</div><!-- /container -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="./resources/js/jquery.catslider.js"></script>
		<script>
			$(function() {

				$( '#mi-slider' ).catslider();

			});
		</script>
		<table border="0" align="center">
		<tr>
			<td>
				<table border="0" class="table table-hover" align="center">
					<tr class="info">
						<td class="span4">공지사항</td>
					</tr>
					<c:forEach var="publicBoard" items="${publicBoard}">
					<form name="publicBoard" action="" metdod="get">
					<tr>
						<td><a href="boardListaction?seq=${publicBoard.boanum }">${publicBoard.boatitle}</a>
						</td>
					</tr>
					</form>
					</c:forEach>
				</table>
			</td>
			<td class="span2">&nbsp;</td>
			<td>
				<table border="0" class="table table-hover" align="center">
					<tr class="info">
						<td class="span4" colspan="2">Q&A</td>
					</tr>
	
					<c:forEach var="qaBoard" items="${qaBoard}">
					<form name="qaBoard" action="" metdod="get">
					<tr>
						<td><a href="QAlistAction?QAseq=${qaBoard.QAboaNum }">${qaBoard.QAboaTitle}</a>
						</td>
						<td>${qaBoard.userName}
						</td>
					</tr>
					</form>
					</c:forEach>

				</table>
			</td>
		</td>
		</table>
	</body>
</html>