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

						<h2>Trainings List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Block1</th>
									<th>PortalHeader</th>
									<th>PortalBlock</th>
									<th>CommunityHeader</th>
									<th>CommunityBlock</th>
									<th>EugHeader</th>
									<th>EugBlock</th>
									<th>EugBlock2</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>SharedResourceHeader</th>
									<th>SharedResourceBlock</th>
									<th>AdditionalResourcesHeader</th>
									<th>AdditionalResourcesBlock</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTrainings var="idIter">
									<strapi:trainings>
										<tr>
											<td><a href="../trainings/show.jsp?ID=<strapi:trainingsID />"><strapi:trainingsID /></a></td>
											<td><strapi:trainingsHeader /></td>
											<td><strapi:trainingsBlock1 /></td>
											<td><strapi:trainingsPortalHeader /></td>
											<td><strapi:trainingsPortalBlock /></td>
											<td><strapi:trainingsCommunityHeader /></td>
											<td><strapi:trainingsCommunityBlock /></td>
											<td><strapi:trainingsEugHeader /></td>
											<td><strapi:trainingsEugBlock /></td>
											<td><strapi:trainingsEugBlock2 /></td>
											<td><strapi:trainingsCreatedAt /></td>
											<td><strapi:trainingsUpdatedAt /></td>
											<td><strapi:trainingsPublishedAt /></td>
											<td><strapi:trainingsCreatedById /></td>
											<td><strapi:trainingsUpdatedById /></td>
											<td><strapi:trainingsSharedResourceHeader /></td>
											<td><strapi:trainingsSharedResourceBlock /></td>
											<td><strapi:trainingsAdditionalResourcesHeader /></td>
											<td><strapi:trainingsAdditionalResourcesBlock /></td>
											<td><a href="../trainings/edit.jsp?ID=<strapi:trainingsID />">edit</a></td>
											<td><a href="../trainings/delete.jsp?ID=<strapi:trainingsID />">delete</a></td>
										</tr>
									</strapi:trainings>
								</strapi:foreachTrainings>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainings/add.jsp">add Trainings</a>
						<br/><br/>

		<strapi:foreachTrainings var="idIter">
			<strapi:trainings>
						<a href="../../strapi/trainings/trainings.jsp?ID=<strapi:trainingsID />"><strapi:trainingsID /></a>
		<strapi:trainingsHeader />
		<strapi:trainingsBlock1 />
		<strapi:trainingsPortalHeader />
		<strapi:trainingsPortalBlock />
		<strapi:trainingsCommunityHeader />
		<strapi:trainingsCommunityBlock />
		<strapi:trainingsEugHeader />
		<strapi:trainingsEugBlock />
		<strapi:trainingsEugBlock2 />
		<strapi:trainingsCreatedAt />
		<strapi:trainingsUpdatedAt />
		<strapi:trainingsPublishedAt />
		<strapi:trainingsCreatedById />
		<strapi:trainingsUpdatedById />
		<strapi:trainingsSharedResourceHeader />
		<strapi:trainingsSharedResourceBlock />
		<strapi:trainingsAdditionalResourcesHeader />
		<strapi:trainingsAdditionalResourcesBlock />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainings>
			</strapi:foreachTrainings>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>