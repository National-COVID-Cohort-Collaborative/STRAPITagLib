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

						<h2>TenantResearcherEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsNavTilesLinks var="idIter">
									<strapi:tenantResearcherEssentialsNavTilesLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsNavTilesLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsNavTilesLinksID />"><strapi:tenantResearcherEssentialsNavTilesLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsNavTilesLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsNavTilesLinksNavTileId /></td>
											<td><strapi:tenantResearcherEssentialsNavTilesLinksNavTileOrder /></td>
											<td><a href="../tenantResearcherEssentialsNavTilesLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsNavTilesLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsNavTilesLinks>
								</strapi:foreachTenantResearcherEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsNavTilesLinks var="idIter">
			<strapi:tenantResearcherEssentialsNavTilesLinks>
						<a href="../../strapi/tenantResearcherEssentialsNavTilesLinks/tenantResearcherEssentialsNavTilesLinks.jsp?ID=<strapi:tenantResearcherEssentialsNavTilesLinksID />"><strapi:tenantResearcherEssentialsNavTilesLinksID /></a>
		<strapi:tenantResearcherEssentialsNavTilesLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsNavTilesLinksNavTileId />
		<strapi:tenantResearcherEssentialsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsNavTilesLinks>
			</strapi:foreachTenantResearcherEssentialsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>