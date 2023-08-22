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
<strapi:toolsToolLinks ID="${ID}">
	<h2>ToolsToolLinks: <strapi:toolsToolLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:toolsToolLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../tools/show.jsp?ID=<strapi:toolsToolLinksToolId />">Tools</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ToolId</th>
			<th>ContentImageBlockRightId</th>
			<th>ContentImageBlockRightOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:toolsToolLinksID />"><strapi:toolsToolLinksID /></a></td>
				<td><strapi:toolsToolLinksToolId /></td>
				<td><strapi:toolsToolLinksContentImageBlockRightId /></td>
				<td><strapi:toolsToolLinksContentImageBlockRightOrder /></td>
			</tr>
		</table>
</strapi:toolsToolLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>