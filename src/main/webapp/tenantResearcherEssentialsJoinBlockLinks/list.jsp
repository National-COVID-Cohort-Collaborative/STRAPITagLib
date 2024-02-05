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

						<h2>TenantResearcherEssentialsJoinBlockLinks List</h2>
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
								<strapi:foreachTenantResearcherEssentialsJoinBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsJoinBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsJoinBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />"><strapi:tenantResearcherEssentialsJoinBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsJoinBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../tenantResearcherEssentialsJoinBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsJoinBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsJoinBlockLinks>
								</strapi:foreachTenantResearcherEssentialsJoinBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsJoinBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsJoinBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsJoinBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsJoinBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsJoinBlockLinks/tenantResearcherEssentialsJoinBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />"><strapi:tenantResearcherEssentialsJoinBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsJoinBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsJoinBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsJoinBlockLinks>
			</strapi:foreachTenantResearcherEssentialsJoinBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>