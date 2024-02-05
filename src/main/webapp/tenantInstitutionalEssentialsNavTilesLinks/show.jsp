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
<strapi:tenantInstitutionalEssentialsNavTilesLinks ID="${ID}">
	<h2>TenantInstitutionalEssentialsNavTilesLinks: <strapi:tenantInstitutionalEssentialsNavTilesLinksID /></h2>
<ul>
	<li><a href="../navTiles/show.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileId />">NavTiles</a>
	<li><a href="../tenantInstitutionalEssentials/show.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId />">TenantInstitutionalEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TenantInstitutionalEssentialId</th>
			<th>NavTileId</th>
			<th>NavTileOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />"><strapi:tenantInstitutionalEssentialsNavTilesLinksID /></a></td>
				<td><strapi:tenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId /></td>
				<td><strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileId /></td>
				<td><strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileOrder /></td>
			</tr>
		</table>
</strapi:tenantInstitutionalEssentialsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>