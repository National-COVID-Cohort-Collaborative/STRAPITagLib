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

						<h2>TenantAccountChecklists List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Header2</th>
									<th>Checklist</th>
									<th>Trailer</th>
									<th>Intro</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantAccountChecklists var="idIter">
									<strapi:tenantAccountChecklists>
										<tr>
											<td><a href="../tenantAccountChecklists/show.jsp?ID=<strapi:tenantAccountChecklistsID />"><strapi:tenantAccountChecklistsID /></a></td>
											<td><strapi:tenantAccountChecklistsHeader /></td>
											<td><strapi:tenantAccountChecklistsHeader2 /></td>
											<td><strapi:tenantAccountChecklistsChecklist /></td>
											<td><strapi:tenantAccountChecklistsTrailer /></td>
											<td><strapi:tenantAccountChecklistsIntro /></td>
											<td><strapi:tenantAccountChecklistsCreatedAt /></td>
											<td><strapi:tenantAccountChecklistsUpdatedAt /></td>
											<td><strapi:tenantAccountChecklistsPublishedAt /></td>
											<td><strapi:tenantAccountChecklistsCreatedById /></td>
											<td><strapi:tenantAccountChecklistsUpdatedById /></td>
											<td><a href="../tenantAccountChecklists/edit.jsp?ID=<strapi:tenantAccountChecklistsID />">edit</a></td>
											<td><a href="../tenantAccountChecklists/delete.jsp?ID=<strapi:tenantAccountChecklistsID />">delete</a></td>
										</tr>
									</strapi:tenantAccountChecklists>
								</strapi:foreachTenantAccountChecklists>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantAccountChecklists/add.jsp">add TenantAccountChecklists</a>
						<br/><br/>

		<strapi:foreachTenantAccountChecklists var="idIter">
			<strapi:tenantAccountChecklists>
						<a href="../../strapi/tenantAccountChecklists/tenantAccountChecklists.jsp?ID=<strapi:tenantAccountChecklistsID />"><strapi:tenantAccountChecklistsID /></a>
		<strapi:tenantAccountChecklistsHeader />
		<strapi:tenantAccountChecklistsHeader2 />
		<strapi:tenantAccountChecklistsChecklist />
		<strapi:tenantAccountChecklistsTrailer />
		<strapi:tenantAccountChecklistsIntro />
		<strapi:tenantAccountChecklistsCreatedAt />
		<strapi:tenantAccountChecklistsUpdatedAt />
		<strapi:tenantAccountChecklistsPublishedAt />
		<strapi:tenantAccountChecklistsCreatedById />
		<strapi:tenantAccountChecklistsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantAccountChecklists>
			</strapi:foreachTenantAccountChecklists>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>