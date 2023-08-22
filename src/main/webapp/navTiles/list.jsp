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

						<h2>NavTiles List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Url</th>
									<th>UrlLabel</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Header</th>
									<th>Block</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNavTiles var="idIter">
									<strapi:navTiles>
										<tr>
											<td><a href="../navTiles/show.jsp?ID=<strapi:navTilesID />"><strapi:navTilesID /></a></td>
											<td><strapi:navTilesName /></td>
											<td><strapi:navTilesUrl /></td>
											<td><strapi:navTilesUrlLabel /></td>
											<td><strapi:navTilesCreatedAt /></td>
											<td><strapi:navTilesUpdatedAt /></td>
											<td><strapi:navTilesPublishedAt /></td>
											<td><strapi:navTilesCreatedById /></td>
											<td><strapi:navTilesUpdatedById /></td>
											<td><strapi:navTilesHeader /></td>
											<td><strapi:navTilesBlock /></td>
											<td><a href="../navTiles/edit.jsp?ID=<strapi:navTilesID />">edit</a></td>
											<td><a href="../navTiles/delete.jsp?ID=<strapi:navTilesID />">delete</a></td>
										</tr>
									</strapi:navTiles>
								</strapi:foreachNavTiles>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../navTiles/add.jsp">add NavTiles</a>
						<br/><br/>

		<strapi:foreachNavTiles var="idIter">
			<strapi:navTiles>
						<a href="../../strapi/navTiles/navTiles.jsp?ID=<strapi:navTilesID />"><strapi:navTilesID /></a>
		<strapi:navTilesName />
		<strapi:navTilesUrl />
		<strapi:navTilesUrlLabel />
		<strapi:navTilesCreatedAt />
		<strapi:navTilesUpdatedAt />
		<strapi:navTilesPublishedAt />
		<strapi:navTilesCreatedById />
		<strapi:navTilesUpdatedById />
		<strapi:navTilesHeader />
		<strapi:navTilesBlock />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:navTiles>
			</strapi:foreachNavTiles>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>