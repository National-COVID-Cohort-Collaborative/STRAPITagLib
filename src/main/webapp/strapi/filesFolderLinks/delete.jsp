<%@ include file="../../_include.jsp"  %>

<c:if test="${ empty param.ID }">
	<c:redirect url="list.jsp"/>
</c:if>

<fmt:parseNumber var="ID" value="${param.ID}" />

<strapi:deleteFilesFolderLinks ID="${ID}"/>

<c:redirect url="list.jsp"/>