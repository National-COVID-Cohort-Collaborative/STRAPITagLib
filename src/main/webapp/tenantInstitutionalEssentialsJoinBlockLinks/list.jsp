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

						<h2>TenantInstitutionalEssentialsJoinBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantInstitutionalEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks var="idIter">
									<strapi:tenantInstitutionalEssentialsJoinBlockLinks>
										<tr>
											<td><a href="../tenantInstitutionalEssentialsJoinBlockLinks/show.jsp?ID=<strapi:tenantInstitutionalEssentialsJoinBlockLinksID />"><strapi:tenantInstitutionalEssentialsJoinBlockLinksID /></a></td>
											<td><strapi:tenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId /></td>
											<td><strapi:tenantInstitutionalEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../tenantInstitutionalEssentialsJoinBlockLinks/edit.jsp?ID=<strapi:tenantInstitutionalEssentialsJoinBlockLinksID />">edit</a></td>
											<td><a href="../tenantInstitutionalEssentialsJoinBlockLinks/delete.jsp?ID=<strapi:tenantInstitutionalEssentialsJoinBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantInstitutionalEssentialsJoinBlockLinks>
								</strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantInstitutionalEssentialsJoinBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantInstitutionalEssentialsJoinBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks var="idIter">
			<strapi:tenantInstitutionalEssentialsJoinBlockLinks>
						<a href="../../strapi/tenantInstitutionalEssentialsJoinBlockLinks/tenantInstitutionalEssentialsJoinBlockLinks.jsp?ID=<strapi:tenantInstitutionalEssentialsJoinBlockLinksID />"><strapi:tenantInstitutionalEssentialsJoinBlockLinksID /></a>
		<strapi:tenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId />
		<strapi:tenantInstitutionalEssentialsJoinBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantInstitutionalEssentialsJoinBlockLinks>
			</strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>