<%@ include file="../_include.jsp"  %>

        <html>
            <jsp:include page="../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:toolsDescriptionLinks ID="${ID}">
	<h2>ToolsDescriptionLinks: <strapi:toolsDescriptionLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:toolsDescriptionLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../tools/show.jsp?ID=<strapi:toolsDescriptionLinksToolId />">Tools</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ToolId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:toolsDescriptionLinksID />"><strapi:toolsDescriptionLinksID /></a></td>
				<td><strapi:toolsDescriptionLinksToolId /></td>
				<td><strapi:toolsDescriptionLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:toolsDescriptionLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>