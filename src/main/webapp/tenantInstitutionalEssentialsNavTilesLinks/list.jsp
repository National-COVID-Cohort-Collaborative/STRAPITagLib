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

						<h2>TenantInstitutionalEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantInstitutionalEssentialId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantInstitutionalEssentialsNavTilesLinks var="idIter">
									<strapi:tenantInstitutionalEssentialsNavTilesLinks>
										<tr>
											<td><a href="../tenantInstitutionalEssentialsNavTilesLinks/show.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />"><strapi:tenantInstitutionalEssentialsNavTilesLinksID /></a></td>
											<td><strapi:tenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId /></td>
											<td><strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileId /></td>
											<td><strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileOrder /></td>
											<td><a href="../tenantInstitutionalEssentialsNavTilesLinks/edit.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../tenantInstitutionalEssentialsNavTilesLinks/delete.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:tenantInstitutionalEssentialsNavTilesLinks>
								</strapi:foreachTenantInstitutionalEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantInstitutionalEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantInstitutionalEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachTenantInstitutionalEssentialsNavTilesLinks var="idIter">
			<strapi:tenantInstitutionalEssentialsNavTilesLinks>
						<a href="../../strapi/tenantInstitutionalEssentialsNavTilesLinks/tenantInstitutionalEssentialsNavTilesLinks.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />"><strapi:tenantInstitutionalEssentialsNavTilesLinksID /></a>
		<strapi:tenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId />
		<strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileId />
		<strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantInstitutionalEssentialsNavTilesLinks>
			</strapi:foreachTenantInstitutionalEssentialsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>