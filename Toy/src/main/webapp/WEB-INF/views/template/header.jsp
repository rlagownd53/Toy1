<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>zumsim</title>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<style>
		.side_menu_bar {
			position: absolute;
			left: 0;
			top: 0;
			width: 200px;
			height: 100%;
			background-color: #819FF7;
		}
		.wrap {
			height: 80%;
		}
		.main {
			position: absolute;
			left: 200px;
			border: 1px solid firebrick;
			width: 1000px;
			padding: 80px;
		}
		.main_logo {
			display: block;
			margin: 0 auto;
			width: 150px;
			height: 100px;
			text-align: center;
		}
		.login_box {
			margin-top: 50px;
			text-align: center;
		}
		.login_box span {
			width: 45%;
			display: inline-table;
		}
		.login_box span a {
			color: white;
			vertical-align: baseline;
		}
		a:hover {
			color: white;
		}
	</style>
</head>
<body>
	<div class="container wrap">
		<div class="side_menu_bar">
			<a href="<c:url value="/"/>"><img src="${pageContext.request.contextPath}/resources/images/davichi.jpeg" alt="홈으로" class="main_logo"></a>
			
			<div class="login_box">
				<span class="glyphicon glyphicon-log-in">
					<a class="btn">로그인</a>
				</span>
				<span class="glyphicon glyphicon-user">
					<a class="btn">회원가입</a>
				</span>
			</div>
		</div>
		<div class="main">
			<span class="glyphicon glyphicon-align-justify"></span>
			main
		</div>
	</div>
