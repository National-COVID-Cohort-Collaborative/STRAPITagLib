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

						<h2>WorkstreamsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamsNavTilesLinks var="idIter">
									<strapi:workstreamsNavTilesLinks>
										<tr>
											<td><a href="../workstreamsNavTilesLinks/show.jsp?ID=<strapi:workstreamsNavTilesLinksID />"><strapi:workstreamsNavTilesLinksID /></a></td>
											<td><strapi:workstreamsNavTilesLinksWorkstreamId /></td>
											<td><strapi:workstreamsNavTilesLinksNavTileId /></td>
											<td><strapi:workstreamsNavTilesLinksNavTileOrder /></td>
											<td><a href="../workstreamsNavTilesLinks/edit.jsp?ID=<strapi:workstreamsNavTilesLinksID />">edit</a></td>
											<td><a href="../workstreamsNavTilesLinks/delete.jsp?ID=<strapi:workstreamsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamsNavTilesLinks>
								</strapi:foreachWorkstreamsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamsNavTilesLinks var="idIter">
			<strapi:workstreamsNavTilesLinks>
						<a href="../../strapi/workstreamsNavTilesLinks/workstreamsNavTilesLinks.jsp?ID=<strapi:workstreamsNavTilesLinksID />"><strapi:workstreamsNavTilesLinksID /></a>
		<strapi:workstreamsNavTilesLinksWorkstreamId />
		<strapi:workstreamsNavTilesLinksNavTileId />
		<strapi:workstreamsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamsNavTilesLinks>
			</strapi:foreachWorkstreamsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>