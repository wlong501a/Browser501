<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>Jsp:jQuery</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script >
	$(function() {
		//내가 한 방법 empty() => 기존에 작성된 내용 삭제
		 $("#btn").on("click", function() {
			var id = $("#id").val();
			var pw = $("#pw").val();
			$("#result").empty().append("아이디:: "+id +"<br>"+"비밀번호:: "+ pw +"<br>");
		}); 
		
		//선생님이 한 방법
		/*$("#btn").click(function() {
			var result = "아이디:: " + $("#id").val() + "<br>";
			result += "비밀번호:: " + $("#pw").val() + "<br>";
			$("#result").html(result);
		});*/
		
	});
	
	

</script>

<style type="text/css">
#result{
	width: 250px;
	height: 200px;
	border: 5px double #6699ff;
}
</style>
</head>
<body>
<label for="id">아이디</label><input type="text" id="id" placeholder="aaaa@aaa.com" required autofocus><br>
<label for="pw">비밀번호</label><input type="password" id="pw" placeholder="비밀번호"><br>
<button id="btn">확인</button>
<p>결과</p>
  <div id="result"></div>
</body>
</html>