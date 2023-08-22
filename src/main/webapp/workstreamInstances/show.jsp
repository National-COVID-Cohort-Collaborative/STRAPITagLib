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
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:workstreamInstances ID="${ID}">
	<h2>WorkstreamInstances: <strapi:workstreamInstancesID /></h2>
		<table border=1>
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
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:workstreamInstancesID />"><strapi:workstreamInstancesID /></a></td>
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
			</tr>
		</table>

						<h2>WorkstreamInstancesBiosLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamInstanceId</th>
									<th>BioId</th>
									<th>BioOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamInstancesBiosLinks var="idIter">
									<strapi:workstreamInstancesBiosLinks>
										<tr>
											<td><a href="../workstreamInstancesBiosLinks/show.jsp?ID=<strapi:workstreamInstancesBiosLinksID />"><strapi:workstreamInstancesBiosLinksID /></a></td>
											<td><strapi:workstreamInstancesBiosLinksWorkstreamInstanceId /></td>
											<td><strapi:workstreamInstancesBiosLinksBioId /></td>
											<td><strapi:workstreamInstancesBiosLinksBioOrder /></td>
											<td><a href="../workstreamInstancesBiosLinks/edit.jsp?ID=<strapi:workstreamInstancesBiosLinksID />">edit</a></td>
											<td><a href="../workstreamInstancesBiosLinks/delete.jsp?ID=<strapi:workstreamInstancesBiosLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamInstancesBiosLinks>
								</strapi:foreachWorkstreamInstancesBiosLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamInstancesBiosLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamInstancesBiosLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamInstancesBiosLinks var="idIter">
			<strapi:workstreamInstancesBiosLinks>
						<a href="../../strapi/workstreamInstancesBiosLinks/workstreamInstancesBiosLinks.jsp?ID=<strapi:workstreamInstancesBiosLinksID />"><strapi:workstreamInstancesBiosLinksID /></a>
		<strapi:workstreamInstancesBiosLinksWorkstreamInstanceId />
		<strapi:workstreamInstancesBiosLinksBioId />
		<strapi:workstreamInstancesBiosLinksBioOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamInstancesBiosLinks>
			</strapi:foreachWorkstreamInstancesBiosLinks>

						<h2>WorkstreamInstancesFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamInstanceId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamInstancesFaqsLinks var="idIter">
									<strapi:workstreamInstancesFaqsLinks>
										<tr>
											<td><a href="../workstreamInstancesFaqsLinks/show.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />"><strapi:workstreamInstancesFaqsLinksID /></a></td>
											<td><strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId /></td>
											<td><strapi:workstreamInstancesFaqsLinksFaqId /></td>
											<td><strapi:workstreamInstancesFaqsLinksFaqOrder /></td>
											<td><a href="../workstreamInstancesFaqsLinks/edit.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />">edit</a></td>
											<td><a href="../workstreamInstancesFaqsLinks/delete.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamInstancesFaqsLinks>
								</strapi:foreachWorkstreamInstancesFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamInstancesFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamInstancesFaqsLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamInstancesFaqsLinks var="idIter">
			<strapi:workstreamInstancesFaqsLinks>
						<a href="../../strapi/workstreamInstancesFaqsLinks/workstreamInstancesFaqsLinks.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />"><strapi:workstreamInstancesFaqsLinksID /></a>
		<strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId />
		<strapi:workstreamInstancesFaqsLinksFaqId />
		<strapi:workstreamInstancesFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamInstancesFaqsLinks>
			</strapi:foreachWorkstreamInstancesFaqsLinks>

						<h2>WorkstreamInstancesNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamInstanceId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamInstancesNavTilesLinks var="idIter">
									<strapi:workstreamInstancesNavTilesLinks>
										<tr>
											<td><a href="../workstreamInstancesNavTilesLinks/show.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />"><strapi:workstreamInstancesNavTilesLinksID /></a></td>
											<td><strapi:workstreamInstancesNavTilesLinksWorkstreamInstanceId /></td>
											<td><strapi:workstreamInstancesNavTilesLinksNavTileId /></td>
											<td><strapi:workstreamInstancesNavTilesLinksNavTileOrder /></td>
											<td><a href="../workstreamInstancesNavTilesLinks/edit.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />">edit</a></td>
											<td><a href="../workstreamInstancesNavTilesLinks/delete.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamInstancesNavTilesLinks>
								</strapi:foreachWorkstreamInstancesNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamInstancesNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamInstancesNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamInstancesNavTilesLinks var="idIter">
			<strapi:workstreamInstancesNavTilesLinks>
						<a href="../../strapi/workstreamInstancesNavTilesLinks/workstreamInstancesNavTilesLinks.jsp?ID=<strapi:workstreamInstancesNavTilesLinksID />"><strapi:workstreamInstancesNavTilesLinksID /></a>
		<strapi:workstreamInstancesNavTilesLinksWorkstreamInstanceId />
		<strapi:workstreamInstancesNavTilesLinksNavTileId />
		<strapi:workstreamInstancesNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamInstancesNavTilesLinks>
			</strapi:foreachWorkstreamInstancesNavTilesLinks>
</strapi:workstreamInstances>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>