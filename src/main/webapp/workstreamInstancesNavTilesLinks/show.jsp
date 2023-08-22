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
<strapi:workstreamInstancesNavTilesLinks ID="${ID}">
	<h2>WorkstreamInstancesNavTilesLinks: <strapi:workstreamInstancesNavTilesLinksID /></h2>
<ul>
	<li><a href="../navTiles/show.jsp?ID=<strapi:workstreamInstancesNavTilesLinksNavTileId />">NavTiles</a>
	<li><a href="../workstreamInstances/show.jsp?ID=<strapi:workstreamInstancesNavTilesLinksWorkstreamInstanceId />">WorkstreamInstances</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>WorkstreamInstanceId</th>
			<th>NavTileId</th>
			<th>NavTileOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />"><strapi:workstreamInstancesNavTilesLinksID /></a></td>
				<td><strapi:workstreamInstancesNavTilesLinksWorkstreamInstanceId /></td>
				<td><strapi:workstreamInstancesNavTilesLinksNavTileId /></td>
				<td><strapi:workstreamInstancesNavTilesLinksNavTileOrder /></td>
			</tr>
		</table>
</strapi:workstreamInstancesNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>