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
<strapi:tenantInstitutionalEssentialsStepLinks ID="${ID}">
	<h2>TenantInstitutionalEssentialsStepLinks: <strapi:tenantInstitutionalEssentialsStepLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../tenantInstitutionalEssentials/show.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId />">TenantInstitutionalEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TenantInstitutionalEssentialId</th>
			<th>ContentImageBlockRightId</th>
			<th>ContentImageBlockRightOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />"><strapi:tenantInstitutionalEssentialsStepLinksID /></a></td>
				<td><strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId /></td>
				<td><strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId /></td>
				<td><strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder /></td>
			</tr>
		</table>
</strapi:tenantInstitutionalEssentialsStepLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>