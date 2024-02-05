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
<strapi:tenantResearcherEssentialsGovernanceBlockLinks ID="${ID}">
	<h2>TenantResearcherEssentialsGovernanceBlockLinks: <strapi:tenantResearcherEssentialsGovernanceBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../tenantResearcherEssentials/show.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksTenantResearcherEssentialId />">TenantResearcherEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TenantResearcherEssentialId</th>
			<th>ContentImageBlockRightId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />"><strapi:tenantResearcherEssentialsGovernanceBlockLinksID /></a></td>
				<td><strapi:tenantResearcherEssentialsGovernanceBlockLinksTenantResearcherEssentialId /></td>
				<td><strapi:tenantResearcherEssentialsGovernanceBlockLinksContentImageBlockRightId /></td>
			</tr>
		</table>
</strapi:tenantResearcherEssentialsGovernanceBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>