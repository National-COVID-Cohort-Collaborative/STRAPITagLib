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
<strapi:formsContentImageBlockRightsLinks ID="${ID}">
	<h2>FormsContentImageBlockRightsLinks: <strapi:formsContentImageBlockRightsLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:formsContentImageBlockRightsLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../forms/show.jsp?ID=<strapi:formsContentImageBlockRightsLinksFormId />">Forms</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>FormId</th>
			<th>ContentImageBlockRightId</th>
			<th>ContentImageBlockRightOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />"><strapi:formsContentImageBlockRightsLinksID /></a></td>
				<td><strapi:formsContentImageBlockRightsLinksFormId /></td>
				<td><strapi:formsContentImageBlockRightsLinksContentImageBlockRightId /></td>
				<td><strapi:formsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
			</tr>
		</table>
</strapi:formsContentImageBlockRightsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>