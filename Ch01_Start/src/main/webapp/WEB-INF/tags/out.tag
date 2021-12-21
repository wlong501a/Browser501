<%@ tag pageEncoding="UTF-8" body-content="tagdependent"%>
<!-- body-content="tagdependent":
몸체내부에 포함된 EL, Action Tag를 처리하지 않고 몸체내용을 text값으로 사용 -->
<%@ tag trimDirectiveWhitespaces="true" %>	<!-- 공백은 없앰 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:doBody var="bodyText"/>
<c:out value="${bodyText}" escapeXml="true"/>	<!-- body에 작성한 내용 그대로 출력함 -->