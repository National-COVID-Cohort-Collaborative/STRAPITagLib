<%@ include file="../../_include.jsp"  %>

        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:teamCreationsNavTilesLinks ID="${ID}">
	<h2>TeamCreationsNavTilesLinks: <strapi:teamCreationsNavTilesLinksID /></h2>
<ul>
	<li><a href="../navTiles/show.jsp?ID=<strapi:teamCreationsNavTilesLinksNavTileId />">NavTiles</a>
	<li><a href="../teamCreations/show.jsp?ID=<strapi:teamCreationsNavTilesLinksTeamCreationId />">TeamCreations</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TeamCreationId</th>
			<th>NavTileId</th>
			<th>NavTileOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:teamCreationsNavTilesLinksID />"><strapi:teamCreationsNavTilesLinksID /></a></td>
				<td><strapi:teamCreationsNavTilesLinksTeamCreationId /></td>
				<td><strapi:teamCreationsNavTilesLinksNavTileId /></td>
				<td><strapi:teamCreationsNavTilesLinksNavTileOrder /></td>
			</tr>
		</table>
</strapi:teamCreationsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>