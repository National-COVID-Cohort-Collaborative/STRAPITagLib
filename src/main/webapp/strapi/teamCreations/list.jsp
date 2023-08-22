<%@ include file="../../_include.jsp"  %>

<html>
    <jsp:include page="../../head.jsp" />
    <body>
        <div class="container-fluid">
            <jsp:include page="../../header.jsp" />
            <div class="row flex-nowrap">
                <div class="col-xs-3">
                    <jsp:include page="../../menu.jsp" />
                </div>
                <div class="col-xs-8">

						<h2>TeamCreations List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ReadyHeader</th>
									<th>ReadyBlock</th>
									<th>LeadHeader</th>
									<th>LeadBlock</th>
									<th>ResponsibilityHeader</th>
									<th>ResponsibilityBlock</th>
									<th>ResourcesHeader</th>
									<th>ResourcesBlock</th>
									<th>GuidelineHeader</th>
									<th>GuidelineBlock</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Title</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreations var="idIter">
									<strapi:teamCreations>
										<tr>
											<td><a href="../teamCreations/show.jsp?ID=<strapi:teamCreationsID />"><strapi:teamCreationsID /></a></td>
											<td><strapi:teamCreationsReadyHeader /></td>
											<td><strapi:teamCreationsReadyBlock /></td>
											<td><strapi:teamCreationsLeadHeader /></td>
											<td><strapi:teamCreationsLeadBlock /></td>
											<td><strapi:teamCreationsResponsibilityHeader /></td>
											<td><strapi:teamCreationsResponsibilityBlock /></td>
											<td><strapi:teamCreationsResourcesHeader /></td>
											<td><strapi:teamCreationsResourcesBlock /></td>
											<td><strapi:teamCreationsGuidelineHeader /></td>
											<td><strapi:teamCreationsGuidelineBlock /></td>
											<td><strapi:teamCreationsCreatedAt /></td>
											<td><strapi:teamCreationsUpdatedAt /></td>
											<td><strapi:teamCreationsPublishedAt /></td>
											<td><strapi:teamCreationsCreatedById /></td>
											<td><strapi:teamCreationsUpdatedById /></td>
											<td><strapi:teamCreationsTitle /></td>
											<td><a href="../teamCreations/edit.jsp?ID=<strapi:teamCreationsID />">edit</a></td>
											<td><a href="../teamCreations/delete.jsp?ID=<strapi:teamCreationsID />">delete</a></td>
										</tr>
									</strapi:teamCreations>
								</strapi:foreachTeamCreations>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreations/add.jsp">add TeamCreations</a>
						<br/><br/>

		<strapi:foreachTeamCreations var="idIter">
			<strapi:teamCreations>
						<a href="../../strapi/teamCreations/teamCreations.jsp?ID=<strapi:teamCreationsID />"><strapi:teamCreationsID /></a>
		<strapi:teamCreationsReadyHeader />
		<strapi:teamCreationsReadyBlock />
		<strapi:teamCreationsLeadHeader />
		<strapi:teamCreationsLeadBlock />
		<strapi:teamCreationsResponsibilityHeader />
		<strapi:teamCreationsResponsibilityBlock />
		<strapi:teamCreationsResourcesHeader />
		<strapi:teamCreationsResourcesBlock />
		<strapi:teamCreationsGuidelineHeader />
		<strapi:teamCreationsGuidelineBlock />
		<strapi:teamCreationsCreatedAt />
		<strapi:teamCreationsUpdatedAt />
		<strapi:teamCreationsPublishedAt />
		<strapi:teamCreationsCreatedById />
		<strapi:teamCreationsUpdatedById />
		<strapi:teamCreationsTitle />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreations>
			</strapi:foreachTeamCreations>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>