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

						<h2>InstitutionalEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>InstitutionalEssentialId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachInstitutionalEssentialsNavTilesLinks var="idIter">
									<strapi:institutionalEssentialsNavTilesLinks>
										<tr>
											<td><a href="../institutionalEssentialsNavTilesLinks/show.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />"><strapi:institutionalEssentialsNavTilesLinksID /></a></td>
											<td><strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId /></td>
											<td><strapi:institutionalEssentialsNavTilesLinksNavTileId /></td>
											<td><strapi:institutionalEssentialsNavTilesLinksNavTileOrder /></td>
											<td><a href="../institutionalEssentialsNavTilesLinks/edit.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../institutionalEssentialsNavTilesLinks/delete.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:institutionalEssentialsNavTilesLinks>
								</strapi:foreachInstitutionalEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../institutionalEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add InstitutionalEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachInstitutionalEssentialsNavTilesLinks var="idIter">
			<strapi:institutionalEssentialsNavTilesLinks>
						<a href="../../strapi/institutionalEssentialsNavTilesLinks/institutionalEssentialsNavTilesLinks.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />"><strapi:institutionalEssentialsNavTilesLinksID /></a>
		<strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId />
		<strapi:institutionalEssentialsNavTilesLinksNavTileId />
		<strapi:institutionalEssentialsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:institutionalEssentialsNavTilesLinks>
			</strapi:foreachInstitutionalEssentialsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>