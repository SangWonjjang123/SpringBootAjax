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


<script type="text/javascript">


//수정요망 기존 글 입력에 넣은거임 

if($("#tp").val() != "write" && $("#sessionlv").val()==='1'){
    //에디터 값 넣기
      oEditors.getById["admin_answer"].exec("UPDATE_CONTENTS_FIELD", []);
      var contents = document.getElementById("admin_answer").value;
    
    }
</script>


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
D	padding: 5px;
	border-radius: 3px;
	border: 1px solid #DDA520;
}

table tr th:first-child, table tr td:first-child {
	height: 30px;
}
</style>
</head>
<body>
	<h1 style="font-size:100px;"> 이미지 저장하기</h1>
	<input type="hid den" name="p_id" value="${viewlist.p_id}" />
	<input type="hid den" name="lv" value="${viewlist.lv}" />
	<input type="hid den" name="lv" value="${viewlist.lv}" />
	<form th:action="@{/mail/send}" method="post">


		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="mailaddress"
					placeholder="이메일 주소를 입력하세요"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="mailtitle" placeholder="제목을 입력하세요">
				</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><textarea id = "admin_answer" name="mailcontent"> </textarea>
				</td>
			</tr>
		</table>
		<button>저장</button>
	</form>
</body>
<!--  에티터  Script Start-->
<script type="text/javascript" src="${pageContext.request.contextPath}/libs/smarteditor/js/HuskyEZCreator.js"charset="utf-8"></script>
<script type="text/javascript">

/*
- sSkinURI: 스마트 에디터 스킨 파일의 경로
- fCreator: 에디터를 생성할 함수 이름
*/

//에디터 호출

//   에디터 크기 변경시 아래 경로에 htDimension 부분 수정 
//  /QA1/src/main/resources/static/libs/smarteditor/js/SE2BasicCreator.js
   //에디터 객체를 저장하는 배열
   var oEditors = [];
   window.onload = function(){
   nhn.husky.EZCreator.createInIFrame({
	  		 //oAppRef: 에디터 객체를 저장할 배열
            oAppRef : oEditors,
            //- elPlaceHolder: 에디터를 삽입할 텍스트 에어리어의 ID
            elPlaceHolder : "admin_answer", 
            //- sSkinURI: 스마트 에디터 스킨 파일의 경로
            sSkinURI : "${pageContext.request.contextPath}/libs/smarteditor/SmartEditor2Skin.html",
            //fCreator: 에디터를 생성할 함수 이름
            fCreator : "createSEditor2"
         });
   }
</script>

</html>
