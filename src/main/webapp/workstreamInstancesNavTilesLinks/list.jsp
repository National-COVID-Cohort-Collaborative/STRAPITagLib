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

						<h2>WorkstreamInstancesNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamInstanceId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamInstancesNavTilesLinks var="idIter">
									<strapi:workstreamInstancesNavTilesLinks>
										<tr>
											<td><a href="../workstreamInstancesNavTilesLinks/show.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />"><strapi:workstreamInstancesNavTilesLinksID /></a></td>
											<td><strapi:workstreamInstancesNavTilesLinksWorkstreamInstanceId /></td>
											<td><strapi:workstreamInstancesNavTilesLinksNavTileId /></td>
											<td><strapi:workstreamInstancesNavTilesLinksNavTileOrder /></td>
											<td><a href="../workstreamInstancesNavTilesLinks/edit.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />">edit</a></td>
											<td><a href="../workstreamInstancesNavTilesLinks/delete.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamInstancesNavTilesLinks>
								</strapi:foreachWorkstreamInstancesNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamInstancesNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamInstancesNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamInstancesNavTilesLinks var="idIter">
			<strapi:workstreamInstancesNavTilesLinks>
						<a href="../../strapi/workstreamInstancesNavTilesLinks/workstreamInstancesNavTilesLinks.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />"><strapi:workstreamInstancesNavTilesLinksID /></a>
		<strapi:workstreamInstancesNavTilesLinksWorkstreamInstanceId />
		<strapi:workstreamInstancesNavTilesLinksNavTileId />
		<strapi:workstreamInstancesNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamInstancesNavTilesLinks>
			</strapi:foreachWorkstreamInstancesNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>