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

						<h2>TenantDurRequests List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>RequestHeader</th>
									<th>RequestBlock</th>
									<th>OverviewHeader</th>
									<th>OverviewBlock</th>
									<th>ProcessHeader</th>
									<th>PrereqHeader</th>
									<th>PrereqBlock</th>
									<th>SubmitHeader</th>
									<th>SubmitBlock</th>
									<th>SubmitBlock2</th>
									<th>SubmitBlock3</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantDurRequests var="idIter">
									<strapi:tenantDurRequests>
										<tr>
											<td><a href="../tenantDurRequests/show.jsp?ID=<strapi:tenantDurRequestsID />"><strapi:tenantDurRequestsID /></a></td>
											<td><strapi:tenantDurRequestsHeader /></td>
											<td><strapi:tenantDurRequestsRequestHeader /></td>
											<td><strapi:tenantDurRequestsRequestBlock /></td>
											<td><strapi:tenantDurRequestsOverviewHeader /></td>
											<td><strapi:tenantDurRequestsOverviewBlock /></td>
											<td><strapi:tenantDurRequestsProcessHeader /></td>
											<td><strapi:tenantDurRequestsPrereqHeader /></td>
											<td><strapi:tenantDurRequestsPrereqBlock /></td>
											<td><strapi:tenantDurRequestsSubmitHeader /></td>
											<td><strapi:tenantDurRequestsSubmitBlock /></td>
											<td><strapi:tenantDurRequestsSubmitBlock2 /></td>
											<td><strapi:tenantDurRequestsSubmitBlock3 /></td>
											<td><strapi:tenantDurRequestsCreatedAt /></td>
											<td><strapi:tenantDurRequestsUpdatedAt /></td>
											<td><strapi:tenantDurRequestsPublishedAt /></td>
											<td><strapi:tenantDurRequestsCreatedById /></td>
											<td><strapi:tenantDurRequestsUpdatedById /></td>
											<td><a href="../tenantDurRequests/edit.jsp?ID=<strapi:tenantDurRequestsID />">edit</a></td>
											<td><a href="../tenantDurRequests/delete.jsp?ID=<strapi:tenantDurRequestsID />">delete</a></td>
										</tr>
									</strapi:tenantDurRequests>
								</strapi:foreachTenantDurRequests>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantDurRequests/add.jsp">add TenantDurRequests</a>
						<br/><br/>

		<strapi:foreachTenantDurRequests var="idIter">
			<strapi:tenantDurRequests>
						<a href="../../strapi/tenantDurRequests/tenantDurRequests.jsp?ID=<strapi:tenantDurRequestsID />"><strapi:tenantDurRequestsID /></a>
		<strapi:tenantDurRequestsHeader />
		<strapi:tenantDurRequestsRequestHeader />
		<strapi:tenantDurRequestsRequestBlock />
		<strapi:tenantDurRequestsOverviewHeader />
		<strapi:tenantDurRequestsOverviewBlock />
		<strapi:tenantDurRequestsProcessHeader />
		<strapi:tenantDurRequestsPrereqHeader />
		<strapi:tenantDurRequestsPrereqBlock />
		<strapi:tenantDurRequestsSubmitHeader />
		<strapi:tenantDurRequestsSubmitBlock />
		<strapi:tenantDurRequestsSubmitBlock2 />
		<strapi:tenantDurRequestsSubmitBlock3 />
		<strapi:tenantDurRequestsCreatedAt />
		<strapi:tenantDurRequestsUpdatedAt />
		<strapi:tenantDurRequestsPublishedAt />
		<strapi:tenantDurRequestsCreatedById />
		<strapi:tenantDurRequestsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantDurRequests>
			</strapi:foreachTenantDurRequests>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>