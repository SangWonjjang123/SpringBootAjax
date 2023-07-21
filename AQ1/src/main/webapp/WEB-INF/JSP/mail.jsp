<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery 라이브러리의 최신 버전을 가져옴 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>List</title>
<%@include file="./header.jsp"%>
<style>
.centered {
	width: 400px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.container {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h1 {
	font-size: 24px;
	text-align: center;
	margin-top: 0;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #DDA520;
	padding: 10px;
	text-align: left;
}

th {
	background-color: #f9f9f9;
}

button {
	border: none;
	background-color: #4CAF50;
	color: #fff;
	padding: 8px 16px;
	cursor: pointer;
	border-radius: 3px;
	margin-right: 5px;
}

textarea {
	width: 100%;
	padding: 5px;
	border-radius: 3px;
	border: 1px solid #DDA520;
}

table tr th:first-child, table tr td:first-child {
	height: 30px;
}
</style>
https://conact12.tistory.com/entry/Spring-Boot-%EB%A9%94%EC%9D%BC-%EC%A0%84%EC%86%A1-%EA%B5%AC%ED%98%84-%EA%B5%AC%EA%B8%80-%EB%A9%94%EC%9D%BC   참고하면 될듯
</head>
<body>

	<h1>메일 보내기</h1>
	<input type="hid den" name="p_id" value="${viewlist.p_id}" />
	<input type="hid den" name="lv" value="${viewlist.lv}" />
	<input type="hid den" name="lv" value="${viewlist.lv}" />
	<form th:action="@{/mail/send}" method="post">


		<table>
			<tr>
				<td>메일 주소</td>
				<td><input type="text" name="mailaddress"
					placeholder="이메일 주소를 입력하세요"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="mailtitle" placeholder="제목을 입력하세요">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="mailcontent"> </textarea>
				</td>
			</tr>
		</table>
		<button>발송</button>
	</form>
</body>
</html>
