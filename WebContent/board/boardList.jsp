<%@page import="com.choa.board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	/* Section */
		#container{
			height: 870px;
			width: 1200px;
			margin: 0 auto;
		}
		.section_name{
			height: 100px;
			width: 1200px;
			text-align: center;
			line-height: 120px;
		}
		.section_list{
			height: 250px;
			width: 1200px;
			text-align: center;
			border-spacing: 0px;
			border-collapse: collapse;
		}
		tr{
			border-bottom: 1px solid #cccccc;
		}
		td > a{
			text-decoration: none;
			color: black;
		}
		.li_hit{
			padding: 0 0 0 10px;
		}
		.wri{
			height:25px;
			width: 60px;
			margin-top: 10px;
			background-color: #0064af;
			float:right;
			text-align:center;
			border-radius: 30px;
		}
		.wri > a{
			text-decoration: none;
			color: white;
			line-height: 28px;
			font-size: 13px;
		}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<!-- section -->
	<section id="container">
	<div class="section_name"><h2>BoardList</h2></div>
	<table class="section_list table-hover" >
	<thead>
		<tr>
			<td class="li_no">NUM</td>
			<td class="li_sub">TITLE</td>
			<td>WRITER</td>
			<td>DATE</td>
			<td class="li_hit">HIT</td>
		</tr>
	</thead>
	<c:forEach items="${list}" var="dto">
		<tr>
			<td class="li_no">${dto.num}</td>
			<td class="li_sub">${dto.title}</td>
			<td class="list_2">${dto.writer}</td>
			<td class="list_3">${dto.reg_Date}</td>
			<td class="list_3">${dto.hit}</td>
		</tr>
	</c:forEach>
		
	</table>
	 <form action="./boardWrite.board">
    	<button type="submit" class="btn btn-default">WRITE</button>
    </form>
	</section>

</body>
</html>