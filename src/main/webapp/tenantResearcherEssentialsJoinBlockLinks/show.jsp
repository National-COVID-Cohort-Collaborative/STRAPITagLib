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
<strapi:tenantResearcherEssentialsJoinBlockLinks ID="${ID}">
	<h2>TenantResearcherEssentialsJoinBlockLinks: <strapi:tenantResearcherEssentialsJoinBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../tenantResearcherEssentials/show.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksTenantResearcherEssentialId />">TenantResearcherEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TenantResearcherEssentialId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />"><strapi:tenantResearcherEssentialsJoinBlockLinksID /></a></td>
				<td><strapi:tenantResearcherEssentialsJoinBlockLinksTenantResearcherEssentialId /></td>
				<td><strapi:tenantResearcherEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:tenantResearcherEssentialsJoinBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>