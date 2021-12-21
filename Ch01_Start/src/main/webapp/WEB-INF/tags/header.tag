<%@ tag pageEncoding="UTF-8" body-content="empty"%>
<%@ tag trimDirectiveWhitespaces="true" %>	<!-- 공백은 없앰 -->
<%@ attribute name ="title" required="true" %>	<!-- attribute(변수)는 필수로 있어야함, type: default값은 String -->
<%@ attribute name ="level" type="java.lang.Integer" %>

<%
	String headStartTag = null;
	String headEndTag = null;
	
	if(level == null){
		headStartTag ="<h1>";
		headEndTag ="</h1>";
		
	}else if(level == 1){
		headStartTag ="<h1>";
		headEndTag ="</h1>";
		
	}else if(level == 2){
		headStartTag ="<h2>";
		headEndTag ="</h2>";
		
	}else if(level == 3){
		headStartTag ="<h3>";
		headEndTag ="</h3>";
	}
%>
<!-- ↓level의 숫자에 따라 표현되는 방법 설정 -->
<%=headStartTag %>
${title}
<%=headEndTag %>



