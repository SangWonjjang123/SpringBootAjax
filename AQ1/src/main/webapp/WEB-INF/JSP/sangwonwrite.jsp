<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 네이버 스마트에디터  -->
<!-- <head> 안에 추가 -->
<script type="text/javascript"
	src="/libs/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- 2.10.0 버전엔 js 파일 일부분이 없어 오류 발생 ! -->

<title>연습용</title>
<style>
</style>
</head>
<body>
	<table class="table">
		<tbody>
			<tr>
				<th>답변</th>
				<td><textarea name="txtContent" id="txtContent" rows="22" style="width: 645px">${update.admin_answer}</textarea></td>
			</tr>
		</tbody>

	</table>
	<div id="se2_sample" style="margin: 10px 0;">
		<input type="button" onclick="save();" value="본문 내용 가져오기">
	</div>
</body>

<!-- textarea 밑에 script 작성하기 -->
<script id="smartEditor" type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "txtContent", //textarea ID 입력
		sSkinURI : "/libs/smarteditor/SmartEditor2Skin.html", //martEditor2Skin.html 경로 입력
		fCreator : "createSEditor2",
		htParams : {
			// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseToolbar : true,
			// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseVerticalResizer : false,
			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseModeChanger : false
		}
	});
</script>
</html>
