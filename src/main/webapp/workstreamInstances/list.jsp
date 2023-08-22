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

						<h2>WorkstreamInstances List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>MissionHeader</th>
									<th>MissionBlock</th>
									<th>ConnectHeader</th>
									<th>ConnectBlock</th>
									<th>Block1</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>FaqHeader</th>
									<th>LeadershipHeader</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamInstances var="idIter">
									<strapi:workstreamInstances>
										<tr>
											<td><a href="../workstreamInstances/show.jsp?ID=<strapi:workstreamInstancesID />"><strapi:workstreamInstancesID /></a></td>
											<td><strapi:workstreamInstancesHeader /></td>
											<td><strapi:workstreamInstancesMissionHeader /></td>
											<td><strapi:workstreamInstancesMissionBlock /></td>
											<td><strapi:workstreamInstancesConnectHeader /></td>
											<td><strapi:workstreamInstancesConnectBlock /></td>
											<td><strapi:workstreamInstancesBlock1 /></td>
											<td><strapi:workstreamInstancesCreatedAt /></td>
											<td><strapi:workstreamInstancesUpdatedAt /></td>
											<td><strapi:workstreamInstancesPublishedAt /></td>
											<td><strapi:workstreamInstancesCreatedById /></td>
											<td><strapi:workstreamInstancesUpdatedById /></td>
											<td><strapi:workstreamInstancesFaqHeader /></td>
											<td><strapi:workstreamInstancesLeadershipHeader /></td>
											<td><a href="../workstreamInstances/edit.jsp?ID=<strapi:workstreamInstancesID />">edit</a></td>
											<td><a href="../workstreamInstances/delete.jsp?ID=<strapi:workstreamInstancesID />">delete</a></td>
										</tr>
									</strapi:workstreamInstances>
								</strapi:foreachWorkstreamInstances>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamInstances/add.jsp">add WorkstreamInstances</a>
						<br/><br/>

		<strapi:foreachWorkstreamInstances var="idIter">
			<strapi:workstreamInstances>
						<a href="../../strapi/workstreamInstances/workstreamInstances.jsp?ID=<strapi:workstreamInstancesID />"><strapi:workstreamInstancesID /></a>
		<strapi:workstreamInstancesHeader />
		<strapi:workstreamInstancesMissionHeader />
		<strapi:workstreamInstancesMissionBlock />
		<strapi:workstreamInstancesConnectHeader />
		<strapi:workstreamInstancesConnectBlock />
		<strapi:workstreamInstancesBlock1 />
		<strapi:workstreamInstancesCreatedAt />
		<strapi:workstreamInstancesUpdatedAt />
		<strapi:workstreamInstancesPublishedAt />
		<strapi:workstreamInstancesCreatedById />
		<strapi:workstreamInstancesUpdatedById />
		<strapi:workstreamInstancesFaqHeader />
		<strapi:workstreamInstancesLeadershipHeader />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamInstances>
			</strapi:foreachWorkstreamInstances>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>