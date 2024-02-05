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

						<h2>TenantResearcherEssentialsAccessBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsAccessBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsAccessBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />"><strapi:tenantResearcherEssentialsAccessBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId /></td>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsAccessBlockLinks>
								</strapi:foreachTenantResearcherEssentialsAccessBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsAccessBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsAccessBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsAccessBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsAccessBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsAccessBlockLinks/tenantResearcherEssentialsAccessBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />"><strapi:tenantResearcherEssentialsAccessBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsAccessBlockLinks>
			</strapi:foreachTenantResearcherEssentialsAccessBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>