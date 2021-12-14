<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Operator</title>
</head>
<body>
<img src="el기본객체.png"><br>
${"(1) 리터럴" }<br>
\${"hello."} => ${"hello." }<br>
\${123 } => ${123 }<br>
\${null } => ${null }<br><br>

${"(2) 산술식" }<br>
\${10+20} => ${10+20}<br>
\${123 == 123 } => ${123 == 123 }<br>
\${true && false } => ${true && false }<br>

<!-- 2+5가 7이 맞으면 7, 아니면 10을 써라 -->
\${2+5 == 7 ? 7:10 } => ${2+5 == 7 ? 7:10 }<br>
</body>
</html>