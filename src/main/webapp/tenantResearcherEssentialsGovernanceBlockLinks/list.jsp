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

						<h2>TenantResearcherEssentialsGovernanceBlockLinks List</h2>
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
								<strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsGovernanceBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />"><strapi:tenantResearcherEssentialsGovernanceBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsGovernanceBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsGovernanceBlockLinksContentImageBlockRightId /></td>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsGovernanceBlockLinks>
								</strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsGovernanceBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsGovernanceBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsGovernanceBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsGovernanceBlockLinks/tenantResearcherEssentialsGovernanceBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />"><strapi:tenantResearcherEssentialsGovernanceBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsGovernanceBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsGovernanceBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsGovernanceBlockLinks>
			</strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>