<%@ tag pageEncoding="UTF-8" body-content="empty"%>
<%@ tag trimDirectiveWhitespaces="true" %>	
<%@ attribute name ="name" required="true" %>
<%@ tag dynamic-attributes="optionMap" %> <!-- 동적속성을 optionMap저장해서 이용 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<select name="${name}">
	<c:forEach var="option" items="${optionMap }">
		<option value="${option.key }">${option.value}</option>
	</c:forEach>
</select>
