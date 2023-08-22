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

						<h2>DurRequests List</h2>
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
								<strapi:foreachDurRequests var="idIter">
									<strapi:durRequests>
										<tr>
											<td><a href="../durRequests/show.jsp?ID=<strapi:durRequestsID />"><strapi:durRequestsID /></a></td>
											<td><strapi:durRequestsHeader /></td>
											<td><strapi:durRequestsRequestHeader /></td>
											<td><strapi:durRequestsRequestBlock /></td>
											<td><strapi:durRequestsOverviewHeader /></td>
											<td><strapi:durRequestsOverviewBlock /></td>
											<td><strapi:durRequestsProcessHeader /></td>
											<td><strapi:durRequestsPrereqHeader /></td>
											<td><strapi:durRequestsPrereqBlock /></td>
											<td><strapi:durRequestsSubmitHeader /></td>
											<td><strapi:durRequestsSubmitBlock /></td>
											<td><strapi:durRequestsSubmitBlock2 /></td>
											<td><strapi:durRequestsSubmitBlock3 /></td>
											<td><strapi:durRequestsCreatedAt /></td>
											<td><strapi:durRequestsUpdatedAt /></td>
											<td><strapi:durRequestsPublishedAt /></td>
											<td><strapi:durRequestsCreatedById /></td>
											<td><strapi:durRequestsUpdatedById /></td>
											<td><a href="../durRequests/edit.jsp?ID=<strapi:durRequestsID />">edit</a></td>
											<td><a href="../durRequests/delete.jsp?ID=<strapi:durRequestsID />">delete</a></td>
										</tr>
									</strapi:durRequests>
								</strapi:foreachDurRequests>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../durRequests/add.jsp">add DurRequests</a>
						<br/><br/>

		<strapi:foreachDurRequests var="idIter">
			<strapi:durRequests>
						<a href="../../strapi/durRequests/durRequests.jsp?ID=<strapi:durRequestsID />"><strapi:durRequestsID /></a>
		<strapi:durRequestsHeader />
		<strapi:durRequestsRequestHeader />
		<strapi:durRequestsRequestBlock />
		<strapi:durRequestsOverviewHeader />
		<strapi:durRequestsOverviewBlock />
		<strapi:durRequestsProcessHeader />
		<strapi:durRequestsPrereqHeader />
		<strapi:durRequestsPrereqBlock />
		<strapi:durRequestsSubmitHeader />
		<strapi:durRequestsSubmitBlock />
		<strapi:durRequestsSubmitBlock2 />
		<strapi:durRequestsSubmitBlock3 />
		<strapi:durRequestsCreatedAt />
		<strapi:durRequestsUpdatedAt />
		<strapi:durRequestsPublishedAt />
		<strapi:durRequestsCreatedById />
		<strapi:durRequestsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:durRequests>
			</strapi:foreachDurRequests>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>