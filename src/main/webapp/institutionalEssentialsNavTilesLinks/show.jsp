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
<strapi:institutionalEssentialsNavTilesLinks ID="${ID}">
	<h2>InstitutionalEssentialsNavTilesLinks: <strapi:institutionalEssentialsNavTilesLinksID /></h2>
<ul>
	<li><a href="../institutionalEssentials/show.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId />">InstitutionalEssentials</a>
	<li><a href="../navTiles/show.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksNavTileId />">NavTiles</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>InstitutionalEssentialId</th>
			<th>NavTileId</th>
			<th>NavTileOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />"><strapi:institutionalEssentialsNavTilesLinksID /></a></td>
				<td><strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId /></td>
				<td><strapi:institutionalEssentialsNavTilesLinksNavTileId /></td>
				<td><strapi:institutionalEssentialsNavTilesLinksNavTileOrder /></td>
			</tr>
		</table>
</strapi:institutionalEssentialsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>