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
<strapi:workstreamsNavTilesLinks ID="${ID}">
	<h2>WorkstreamsNavTilesLinks: <strapi:workstreamsNavTilesLinksID /></h2>
<ul>
	<li><a href="../navTiles/show.jsp?ID=<strapi:workstreamsNavTilesLinksNavTileId />">NavTiles</a>
	<li><a href="../workstreams/show.jsp?ID=<strapi:workstreamsNavTilesLinksWorkstreamId />">Workstreams</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>WorkstreamId</th>
			<th>NavTileId</th>
			<th>NavTileOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:workstreamsNavTilesLinksID />"><strapi:workstreamsNavTilesLinksID /></a></td>
				<td><strapi:workstreamsNavTilesLinksWorkstreamId /></td>
				<td><strapi:workstreamsNavTilesLinksNavTileId /></td>
				<td><strapi:workstreamsNavTilesLinksNavTileOrder /></td>
			</tr>
		</table>
</strapi:workstreamsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>