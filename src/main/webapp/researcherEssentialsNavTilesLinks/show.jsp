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
<strapi:researcherEssentialsNavTilesLinks ID="${ID}">
	<h2>ResearcherEssentialsNavTilesLinks: <strapi:researcherEssentialsNavTilesLinksID /></h2>
<ul>
	<li><a href="../navTiles/show.jsp?ID=<strapi:researcherEssentialsNavTilesLinksNavTileId />">NavTiles</a>
	<li><a href="../researcherEssentials/show.jsp?ID=<strapi:researcherEssentialsNavTilesLinksResearcherEssentialId />">ResearcherEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ResearcherEssentialId</th>
			<th>NavTileId</th>
			<th>NavTileOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />"><strapi:researcherEssentialsNavTilesLinksID /></a></td>
				<td><strapi:researcherEssentialsNavTilesLinksResearcherEssentialId /></td>
				<td><strapi:researcherEssentialsNavTilesLinksNavTileId /></td>
				<td><strapi:researcherEssentialsNavTilesLinksNavTileOrder /></td>
			</tr>
		</table>
</strapi:researcherEssentialsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>