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

						<h2>TenantResearcherEssentialsDomainBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsDomainBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsDomainBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsDomainBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />"><strapi:tenantResearcherEssentialsDomainBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsDomainBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsDomainBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../tenantResearcherEssentialsDomainBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsDomainBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsDomainBlockLinks>
								</strapi:foreachTenantResearcherEssentialsDomainBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsDomainBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsDomainBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsDomainBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsDomainBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsDomainBlockLinks/tenantResearcherEssentialsDomainBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />"><strapi:tenantResearcherEssentialsDomainBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsDomainBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsDomainBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsDomainBlockLinks>
			</strapi:foreachTenantResearcherEssentialsDomainBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>