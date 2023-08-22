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
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:teamCreations ID="${ID}">
	<h2>TeamCreations: <strapi:teamCreationsID /></h2>
		<table border=1>
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
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:teamCreationsID />"><strapi:teamCreationsID /></a></td>
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
			</tr>
		</table>

						<h2>TeamCreationsGuidelineFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsGuidelineFaqsLinks var="idIter">
									<strapi:teamCreationsGuidelineFaqsLinks>
										<tr>
											<td><a href="../teamCreationsGuidelineFaqsLinks/show.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />"><strapi:teamCreationsGuidelineFaqsLinksID /></a></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsGuidelineFaqsLinks/edit.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsGuidelineFaqsLinks/delete.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsGuidelineFaqsLinks>
								</strapi:foreachTeamCreationsGuidelineFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsGuidelineFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsGuidelineFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsGuidelineFaqsLinks var="idIter">
			<strapi:teamCreationsGuidelineFaqsLinks>
						<a href="../../strapi/teamCreationsGuidelineFaqsLinks/teamCreationsGuidelineFaqsLinks.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />"><strapi:teamCreationsGuidelineFaqsLinksID /></a>
		<strapi:teamCreationsGuidelineFaqsLinksTeamCreationId />
		<strapi:teamCreationsGuidelineFaqsLinksFaqId />
		<strapi:teamCreationsGuidelineFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsGuidelineFaqsLinks>
			</strapi:foreachTeamCreationsGuidelineFaqsLinks>

						<h2>TeamCreationsLeadFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsLeadFaqsLinks var="idIter">
									<strapi:teamCreationsLeadFaqsLinks>
										<tr>
											<td><a href="../teamCreationsLeadFaqsLinks/show.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />"><strapi:teamCreationsLeadFaqsLinksID /></a></td>
											<td><strapi:teamCreationsLeadFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsLeadFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsLeadFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsLeadFaqsLinks/edit.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsLeadFaqsLinks/delete.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsLeadFaqsLinks>
								</strapi:foreachTeamCreationsLeadFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsLeadFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsLeadFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsLeadFaqsLinks var="idIter">
			<strapi:teamCreationsLeadFaqsLinks>
						<a href="../../strapi/teamCreationsLeadFaqsLinks/teamCreationsLeadFaqsLinks.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />"><strapi:teamCreationsLeadFaqsLinksID /></a>
		<strapi:teamCreationsLeadFaqsLinksTeamCreationId />
		<strapi:teamCreationsLeadFaqsLinksFaqId />
		<strapi:teamCreationsLeadFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsLeadFaqsLinks>
			</strapi:foreachTeamCreationsLeadFaqsLinks>

						<h2>TeamCreationsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsNavTilesLinks var="idIter">
									<strapi:teamCreationsNavTilesLinks>
										<tr>
											<td><a href="../teamCreationsNavTilesLinks/show.jsp?ID=<strapi:teamCreationsNavTilesLinksID />"><strapi:teamCreationsNavTilesLinksID /></a></td>
											<td><strapi:teamCreationsNavTilesLinksTeamCreationId /></td>
											<td><strapi:teamCreationsNavTilesLinksNavTileId /></td>
											<td><strapi:teamCreationsNavTilesLinksNavTileOrder /></td>
											<td><a href="../teamCreationsNavTilesLinks/edit.jsp?ID=<strapi:teamCreationsNavTilesLinksID />">edit</a></td>
											<td><a href="../teamCreationsNavTilesLinks/delete.jsp?ID=<strapi:teamCreationsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsNavTilesLinks>
								</strapi:foreachTeamCreationsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsNavTilesLinks var="idIter">
			<strapi:teamCreationsNavTilesLinks>
						<a href="../../strapi/teamCreationsNavTilesLinks/teamCreationsNavTilesLinks.jsp?ID=<strapi:teamCreationsNavTilesLinksID />"><strapi:teamCreationsNavTilesLinksID /></a>
		<strapi:teamCreationsNavTilesLinksTeamCreationId />
		<strapi:teamCreationsNavTilesLinksNavTileId />
		<strapi:teamCreationsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsNavTilesLinks>
			</strapi:foreachTeamCreationsNavTilesLinks>

						<h2>TeamCreationsReadyFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsReadyFaqsLinks var="idIter">
									<strapi:teamCreationsReadyFaqsLinks>
										<tr>
											<td><a href="../teamCreationsReadyFaqsLinks/show.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />"><strapi:teamCreationsReadyFaqsLinksID /></a></td>
											<td><strapi:teamCreationsReadyFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsReadyFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsReadyFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsReadyFaqsLinks/edit.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsReadyFaqsLinks/delete.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsReadyFaqsLinks>
								</strapi:foreachTeamCreationsReadyFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsReadyFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsReadyFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsReadyFaqsLinks var="idIter">
			<strapi:teamCreationsReadyFaqsLinks>
						<a href="../../strapi/teamCreationsReadyFaqsLinks/teamCreationsReadyFaqsLinks.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />"><strapi:teamCreationsReadyFaqsLinksID /></a>
		<strapi:teamCreationsReadyFaqsLinksTeamCreationId />
		<strapi:teamCreationsReadyFaqsLinksFaqId />
		<strapi:teamCreationsReadyFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsReadyFaqsLinks>
			</strapi:foreachTeamCreationsReadyFaqsLinks>

						<h2>TeamCreationsResourcesFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsResourcesFaqsLinks var="idIter">
									<strapi:teamCreationsResourcesFaqsLinks>
										<tr>
											<td><a href="../teamCreationsResourcesFaqsLinks/show.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />"><strapi:teamCreationsResourcesFaqsLinksID /></a></td>
											<td><strapi:teamCreationsResourcesFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsResourcesFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsResourcesFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsResourcesFaqsLinks/edit.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsResourcesFaqsLinks/delete.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsResourcesFaqsLinks>
								</strapi:foreachTeamCreationsResourcesFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsResourcesFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsResourcesFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsResourcesFaqsLinks var="idIter">
			<strapi:teamCreationsResourcesFaqsLinks>
						<a href="../../strapi/teamCreationsResourcesFaqsLinks/teamCreationsResourcesFaqsLinks.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />"><strapi:teamCreationsResourcesFaqsLinksID /></a>
		<strapi:teamCreationsResourcesFaqsLinksTeamCreationId />
		<strapi:teamCreationsResourcesFaqsLinksFaqId />
		<strapi:teamCreationsResourcesFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsResourcesFaqsLinks>
			</strapi:foreachTeamCreationsResourcesFaqsLinks>

						<h2>TeamCreationsResponsibilityFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsResponsibilityFaqsLinks var="idIter">
									<strapi:teamCreationsResponsibilityFaqsLinks>
										<tr>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/show.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />"><strapi:teamCreationsResponsibilityFaqsLinksID /></a></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/edit.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/delete.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsResponsibilityFaqsLinks>
								</strapi:foreachTeamCreationsResponsibilityFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsResponsibilityFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsResponsibilityFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsResponsibilityFaqsLinks var="idIter">
			<strapi:teamCreationsResponsibilityFaqsLinks>
						<a href="../../strapi/teamCreationsResponsibilityFaqsLinks/teamCreationsResponsibilityFaqsLinks.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />"><strapi:teamCreationsResponsibilityFaqsLinksID /></a>
		<strapi:teamCreationsResponsibilityFaqsLinksTeamCreationId />
		<strapi:teamCreationsResponsibilityFaqsLinksFaqId />
		<strapi:teamCreationsResponsibilityFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsResponsibilityFaqsLinks>
			</strapi:foreachTeamCreationsResponsibilityFaqsLinks>
</strapi:teamCreations>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>