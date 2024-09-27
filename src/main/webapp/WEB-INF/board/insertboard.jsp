<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" context="width=device-width; initial-scale=1">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>네이버 :: Smart Editor 2 &#8482;</title>
<link href="${pageContext.request.contextPath }/resources/smarteditor/css/smart_editor2.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/smarteditor/css/smart_editor2_items.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/smarteditor/css/smart_editor2_out.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/smarteditor/css/smart_editor2_in.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/js/lib/jindo2.all.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/js/lib/jindo_component.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/js/SE2M_Configuration.js" charset="utf-8"></script>	<!-- 설정 파일 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/js/SE2BasicCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/js/smarteditor2.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/js/smarteditor2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/sample/js/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- 20240503_ym 스타일추가 시작 -->
<style type="text/css">
	body { margin: 10px; }
	div.se2_input_area.husky_seditor_editing_area_container {width:100vw !important; height: 600px !important;}
	div#se2_iframe {width:100vw !important;height: 100% !important;}
	#smart_editor2 {width: 50%  !important;margin: 0 auto;}
</style>
<!-- 20240503_ym 스타일추가 종료 -->
</head>
<body>
<div id="se2_sample" style="margin:10px 0;">
	<form action="insertBoard" method="post" id="dataTransferForm" enctype="multipart/form-data">
		<label for="b_title">제목:</label>
		<input type="text" name="b_title"  placeholder="공지사항 제목입력">
		
		<label for="b_target">대상:</label>
		<input type="text" name="b_target"  placeholder="대상 입력">
		
		<label for="b_type">타입:</label>
		<input type="text" name="b_type" placeholder="타입 입력" value="${b_type}" readonly>
		
		<label for="b_writer">작성자:</label>
		<input type="text" name="b_writer"  placeholder="타입 입력">
		
		<input type="submit" onclick="submitContents(this);" value="서버로 내용 전송" />
		<textarea name="b_info" id="ir1" rows="10" cols="100" style="width:766px; height:412px; display:none;"></textarea>
		 첨부파일 등록: <input type="file" name="uploadFile">
	</form>

</div>
<script type="text/javascript">
    var contextPath = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/resources/js/smartedtior.js"></script>

</body>
</html>