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
<strapi:institutionalEssentialsStepLinks ID="${ID}">
	<h2>InstitutionalEssentialsStepLinks: <strapi:institutionalEssentialsStepLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:institutionalEssentialsStepLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../institutionalEssentials/show.jsp?ID=<strapi:institutionalEssentialsStepLinksInstitutionalEssentialId />">InstitutionalEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>InstitutionalEssentialId</th>
			<th>ContentImageBlockRightId</th>
			<th>ContentImageBlockRightOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:institutionalEssentialsStepLinksID />"><strapi:institutionalEssentialsStepLinksID /></a></td>
				<td><strapi:institutionalEssentialsStepLinksInstitutionalEssentialId /></td>
				<td><strapi:institutionalEssentialsStepLinksContentImageBlockRightId /></td>
				<td><strapi:institutionalEssentialsStepLinksContentImageBlockRightOrder /></td>
			</tr>
		</table>
</strapi:institutionalEssentialsStepLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>