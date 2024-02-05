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
<strapi:tenantResearcherEssentialsDomainBlockLinks ID="${ID}">
	<h2>TenantResearcherEssentialsDomainBlockLinks: <strapi:tenantResearcherEssentialsDomainBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../tenantResearcherEssentials/show.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksTenantResearcherEssentialId />">TenantResearcherEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TenantResearcherEssentialId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />"><strapi:tenantResearcherEssentialsDomainBlockLinksID /></a></td>
				<td><strapi:tenantResearcherEssentialsDomainBlockLinksTenantResearcherEssentialId /></td>
				<td><strapi:tenantResearcherEssentialsDomainBlockLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:tenantResearcherEssentialsDomainBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>