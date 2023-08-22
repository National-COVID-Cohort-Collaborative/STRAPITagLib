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
<strapi:accountCreationsInstructionsLinks ID="${ID}">
	<h2>AccountCreationsInstructionsLinks: <strapi:accountCreationsInstructionsLinksID /></h2>
<ul>
	<li><a href="../accountCreations/show.jsp?ID=<strapi:accountCreationsInstructionsLinksAccountCreationId />">AccountCreations</a>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:accountCreationsInstructionsLinksContentImageBlockRightId />">ContentImageBlockRights</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>AccountCreationId</th>
			<th>ContentImageBlockRightId</th>
			<th>ContentImageBlockRightOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:accountCreationsInstructionsLinksID />"><strapi:accountCreationsInstructionsLinksID /></a></td>
				<td><strapi:accountCreationsInstructionsLinksAccountCreationId /></td>
				<td><strapi:accountCreationsInstructionsLinksContentImageBlockRightId /></td>
				<td><strapi:accountCreationsInstructionsLinksContentImageBlockRightOrder /></td>
			</tr>
		</table>
</strapi:accountCreationsInstructionsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>