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
<strapi:tenantResearcherEssentialsAccessBlockLinks ID="${ID}">
	<h2>TenantResearcherEssentialsAccessBlockLinks: <strapi:tenantResearcherEssentialsAccessBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../tenantResearcherEssentials/show.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId />">TenantResearcherEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TenantResearcherEssentialId</th>
			<th>ContentImageBlockRightId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />"><strapi:tenantResearcherEssentialsAccessBlockLinksID /></a></td>
				<td><strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId /></td>
				<td><strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId /></td>
			</tr>
		</table>
</strapi:tenantResearcherEssentialsAccessBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>