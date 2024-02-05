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

						<h2>TenantInstitutionalEssentialsStepLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantInstitutionalEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantInstitutionalEssentialsStepLinks var="idIter">
									<strapi:tenantInstitutionalEssentialsStepLinks>
										<tr>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/show.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />"><strapi:tenantInstitutionalEssentialsStepLinksID /></a></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId /></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId /></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder /></td>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/edit.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />">edit</a></td>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/delete.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />">delete</a></td>
										</tr>
									</strapi:tenantInstitutionalEssentialsStepLinks>
								</strapi:foreachTenantInstitutionalEssentialsStepLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantInstitutionalEssentialsStepLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantInstitutionalEssentialsStepLinks</a>
						<br/><br/>

		<strapi:foreachTenantInstitutionalEssentialsStepLinks var="idIter">
			<strapi:tenantInstitutionalEssentialsStepLinks>
						<a href="../../strapi/tenantInstitutionalEssentialsStepLinks/tenantInstitutionalEssentialsStepLinks.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />"><strapi:tenantInstitutionalEssentialsStepLinksID /></a>
		<strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId />
		<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId />
		<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantInstitutionalEssentialsStepLinks>
			</strapi:foreachTenantInstitutionalEssentialsStepLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>