<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/libs/smarteditor/js/HuskyEZCreator.js"charset="utf-8"></script>
<meta charset="UTF-8">
<title>연습용</title>
<style>
</style>
</head>
<body>
			<textarea name="content" id="content" rows="22"style="width: 800px;"></textarea>
</body>
<script type="text/javascript">
/*
- oAppRef: 에디터 객체를 저장할 배열
- elPlaceHolder: 에디터를 삽입할 텍스트 에어리어의 ID
- sSkinURI: 스마트 에디터 스킨 파일의 경로
- fCreator: 에디터를 생성할 함수 이름
*/
	//에디터 객체를 저장하는 배열
	var oEditors = [];

	nhn.husky.EZCreator
			.createInIFrame({
				oAppRef : oEditors,  
				elPlaceHolder : "content",
				sSkinURI : "${pageContext.request.contextPath}/libs/smarteditor/SmartEditor2Skin.html",
				fCreator : "createSEditor2"
			});
</script>
</html>
