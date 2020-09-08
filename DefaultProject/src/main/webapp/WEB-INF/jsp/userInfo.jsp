<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<title>Welcome</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type ="text/javascript">
$(document).ready(function(){
	$("#btnSearch").click(function(){
	    $.ajax({
	        url : '/user?userNo=' + $("#schUserNo").val(),
	        method : 'post',
	        success : function(data) {
	        	if(data ===""){
	        		alert("회원이 존재하지 않습니다.")
	        	} else{
		        	$("#userNo").val(data.userNo);
		        	$("#userNm").val(data.userNm);
		        	$("#userBirthDt").val(data.userBirthDt);
	        	}
	        },
	        complete : function(data) {
	            console.log(data.responseText);
	        }
	    });
	
	});
	
	$("#btnInsert").click(function(){
	    $.ajax({
	        url : '/user/add?userNo=' + $("#userNo").val() 
	        		+ '&userNm=' + $("#userNm").val()
	        		+ '&userBirthDt=' + $("#userBirthDt").val(),
	        method : 'post',
	        success : function(data) {
	        	alert("회원등록 성공.")
	        },
	        complete : function(data) {
	            console.log(data.responseText);
	        }
	    });
	
	});

});
</script>
</head>
<body>
<h1>회원정보조회</h1>

<div id ='content' >
<div id=search>
회원번호 : <input id="schUserNo" type="text"><input id="btnSearch" type="button" value="조회">
<input id="btnInsert" type="button" value="등록">
</div>
<div style="margin-top:10px">
	<table style="border:1px solid">
	    <colgroup>
	        <col width="100px">
	        <col width="100px">
	        <col width="100px">
	    </colgroup>
	    <thead>
	        <tr>
	            <th>회원번호</th>
	            <th>이름</th>
	            <th>생년월일</th>
	        </tr>
	    </thead>
	    <tbody>
	        <tr>
	            <td><input type="text" id="userNo"></label></td>
	            <td><input type="text" id="userNm"></label></td>
	            <td><input type="text" id="userBirthDt"></label></td>
	        </tr>
	    </tbody>
	</table>
</div>
</div>

</body>
</html>