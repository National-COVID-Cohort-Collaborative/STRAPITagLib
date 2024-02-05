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

						<h2>TenantInstitutionalEssentials List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Header2</th>
									<th>Block</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantInstitutionalEssentials var="idIter">
									<strapi:tenantInstitutionalEssentials>
										<tr>
											<td><a href="../tenantInstitutionalEssentials/show.jsp?ID=<strapi:tenantInstitutionalEssentialsID />"><strapi:tenantInstitutionalEssentialsID /></a></td>
											<td><strapi:tenantInstitutionalEssentialsHeader /></td>
											<td><strapi:tenantInstitutionalEssentialsHeader2 /></td>
											<td><strapi:tenantInstitutionalEssentialsBlock /></td>
											<td><strapi:tenantInstitutionalEssentialsCreatedAt /></td>
											<td><strapi:tenantInstitutionalEssentialsUpdatedAt /></td>
											<td><strapi:tenantInstitutionalEssentialsPublishedAt /></td>
											<td><strapi:tenantInstitutionalEssentialsCreatedById /></td>
											<td><strapi:tenantInstitutionalEssentialsUpdatedById /></td>
											<td><a href="../tenantInstitutionalEssentials/edit.jsp?ID=<strapi:tenantInstitutionalEssentialsID />">edit</a></td>
											<td><a href="../tenantInstitutionalEssentials/delete.jsp?ID=<strapi:tenantInstitutionalEssentialsID />">delete</a></td>
										</tr>
									</strapi:tenantInstitutionalEssentials>
								</strapi:foreachTenantInstitutionalEssentials>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantInstitutionalEssentials/add.jsp">add TenantInstitutionalEssentials</a>
						<br/><br/>

		<strapi:foreachTenantInstitutionalEssentials var="idIter">
			<strapi:tenantInstitutionalEssentials>
						<a href="../../strapi/tenantInstitutionalEssentials/tenantInstitutionalEssentials.jsp?ID=<strapi:tenantInstitutionalEssentialsID />"><strapi:tenantInstitutionalEssentialsID /></a>
		<strapi:tenantInstitutionalEssentialsHeader />
		<strapi:tenantInstitutionalEssentialsHeader2 />
		<strapi:tenantInstitutionalEssentialsBlock />
		<strapi:tenantInstitutionalEssentialsCreatedAt />
		<strapi:tenantInstitutionalEssentialsUpdatedAt />
		<strapi:tenantInstitutionalEssentialsPublishedAt />
		<strapi:tenantInstitutionalEssentialsCreatedById />
		<strapi:tenantInstitutionalEssentialsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantInstitutionalEssentials>
			</strapi:foreachTenantInstitutionalEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>