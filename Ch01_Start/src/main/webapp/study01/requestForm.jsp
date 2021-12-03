<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request 내장객체 예제</title>
</head>
<body>
<h1>학번,이름,학년,선택과목을 입력하는 폼</h1>
<form action="requestResult.jsp" method="post" >

	<label for="class_id">학번: </label>
		<input type="text" name="class_id"><br>

	<label for="name">이름: </label>
		<input type="text" name="name"><br>

	<label for="grade">학년: </label>
		<input type="radio" name="grade" value="1학년">1학년&nbsp;
		<input type="radio" name="grade" value="2학년">2학년&nbsp;
		<input type="radio" name="grade" value="3학년">3학년&nbsp;
		<input type="radio" name="grade" value="4학년">4학년<br>

	 <label for="subject">선택과목:</label>
 		<select name="subject">
   		 <option value="java">JAVA</option>
   		 <option value="javascript">JavaScript</option>
  		 <option value="jQuery">jQuery</option>
  		 <option value="jsp">JSP</option>
  		</select><br>

		<input type="submit" value="입력완료">
</form>

</body>
</html>