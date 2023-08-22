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
<strapi:accountCreationsIntroLinks ID="${ID}">
	<h2>AccountCreationsIntroLinks: <strapi:accountCreationsIntroLinksID /></h2>
<ul>
	<li><a href="../accountCreations/show.jsp?ID=<strapi:accountCreationsIntroLinksAccountCreationId />">AccountCreations</a>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:accountCreationsIntroLinksContentImageBlockRightId />">ContentImageBlockRights</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>AccountCreationId</th>
			<th>ContentImageBlockRightId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:accountCreationsIntroLinksID />"><strapi:accountCreationsIntroLinksID /></a></td>
				<td><strapi:accountCreationsIntroLinksAccountCreationId /></td>
				<td><strapi:accountCreationsIntroLinksContentImageBlockRightId /></td>
			</tr>
		</table>
</strapi:accountCreationsIntroLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>