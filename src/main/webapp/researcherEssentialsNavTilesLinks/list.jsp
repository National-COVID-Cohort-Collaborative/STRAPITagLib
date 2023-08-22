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

						<h2>ResearcherEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsNavTilesLinks var="idIter">
									<strapi:researcherEssentialsNavTilesLinks>
										<tr>
											<td><a href="../researcherEssentialsNavTilesLinks/show.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />"><strapi:researcherEssentialsNavTilesLinksID /></a></td>
											<td><strapi:researcherEssentialsNavTilesLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsNavTilesLinksNavTileId /></td>
											<td><strapi:researcherEssentialsNavTilesLinksNavTileOrder /></td>
											<td><a href="../researcherEssentialsNavTilesLinks/edit.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsNavTilesLinks/delete.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsNavTilesLinks>
								</strapi:foreachResearcherEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsNavTilesLinks var="idIter">
			<strapi:researcherEssentialsNavTilesLinks>
						<a href="../../strapi/researcherEssentialsNavTilesLinks/researcherEssentialsNavTilesLinks.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />"><strapi:researcherEssentialsNavTilesLinksID /></a>
		<strapi:researcherEssentialsNavTilesLinksResearcherEssentialId />
		<strapi:researcherEssentialsNavTilesLinksNavTileId />
		<strapi:researcherEssentialsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsNavTilesLinks>
			</strapi:foreachResearcherEssentialsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>