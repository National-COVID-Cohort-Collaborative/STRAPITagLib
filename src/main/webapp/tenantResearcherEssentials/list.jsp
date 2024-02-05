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

						<h2>TenantResearcherEssentials List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentials var="idIter">
									<strapi:tenantResearcherEssentials>
										<tr>
											<td><a href="../tenantResearcherEssentials/show.jsp?ID=<strapi:tenantResearcherEssentialsID />"><strapi:tenantResearcherEssentialsID /></a></td>
											<td><strapi:tenantResearcherEssentialsHeader /></td>
											<td><strapi:tenantResearcherEssentialsCreatedAt /></td>
											<td><strapi:tenantResearcherEssentialsUpdatedAt /></td>
											<td><strapi:tenantResearcherEssentialsPublishedAt /></td>
											<td><strapi:tenantResearcherEssentialsCreatedById /></td>
											<td><strapi:tenantResearcherEssentialsUpdatedById /></td>
											<td><a href="../tenantResearcherEssentials/edit.jsp?ID=<strapi:tenantResearcherEssentialsID />">edit</a></td>
											<td><a href="../tenantResearcherEssentials/delete.jsp?ID=<strapi:tenantResearcherEssentialsID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentials>
								</strapi:foreachTenantResearcherEssentials>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentials/add.jsp">add TenantResearcherEssentials</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentials var="idIter">
			<strapi:tenantResearcherEssentials>
						<a href="../../strapi/tenantResearcherEssentials/tenantResearcherEssentials.jsp?ID=<strapi:tenantResearcherEssentialsID />"><strapi:tenantResearcherEssentialsID /></a>
		<strapi:tenantResearcherEssentialsHeader />
		<strapi:tenantResearcherEssentialsCreatedAt />
		<strapi:tenantResearcherEssentialsUpdatedAt />
		<strapi:tenantResearcherEssentialsPublishedAt />
		<strapi:tenantResearcherEssentialsCreatedById />
		<strapi:tenantResearcherEssentialsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentials>
			</strapi:foreachTenantResearcherEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>