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

						<h2>TeamCreationsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsNavTilesLinks var="idIter">
									<strapi:teamCreationsNavTilesLinks>
										<tr>
											<td><a href="../teamCreationsNavTilesLinks/show.jsp?ID=<strapi:teamCreationsNavTilesLinksID />"><strapi:teamCreationsNavTilesLinksID /></a></td>
											<td><strapi:teamCreationsNavTilesLinksTeamCreationId /></td>
											<td><strapi:teamCreationsNavTilesLinksNavTileId /></td>
											<td><strapi:teamCreationsNavTilesLinksNavTileOrder /></td>
											<td><a href="../teamCreationsNavTilesLinks/edit.jsp?ID=<strapi:teamCreationsNavTilesLinksID />">edit</a></td>
											<td><a href="../teamCreationsNavTilesLinks/delete.jsp?ID=<strapi:teamCreationsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsNavTilesLinks>
								</strapi:foreachTeamCreationsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsNavTilesLinks var="idIter">
			<strapi:teamCreationsNavTilesLinks>
						<a href="../../strapi/teamCreationsNavTilesLinks/teamCreationsNavTilesLinks.jsp?ID=<strapi:teamCreationsNavTilesLinksID />"><strapi:teamCreationsNavTilesLinksID /></a>
		<strapi:teamCreationsNavTilesLinksTeamCreationId />
		<strapi:teamCreationsNavTilesLinksNavTileId />
		<strapi:teamCreationsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsNavTilesLinks>
			</strapi:foreachTeamCreationsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>