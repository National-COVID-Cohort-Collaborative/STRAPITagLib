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
<strapi:navTiles ID="${ID}">
	<h2>NavTiles: <strapi:navTilesID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Url</th>
			<th>UrlLabel</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>Header</th>
			<th>Block</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:navTilesID />"><strapi:navTilesID /></a></td>
				<td><strapi:navTilesName /></td>
				<td><strapi:navTilesUrl /></td>
				<td><strapi:navTilesUrlLabel /></td>
				<td><strapi:navTilesCreatedAt /></td>
				<td><strapi:navTilesUpdatedAt /></td>
				<td><strapi:navTilesPublishedAt /></td>
				<td><strapi:navTilesCreatedById /></td>
				<td><strapi:navTilesUpdatedById /></td>
				<td><strapi:navTilesHeader /></td>
				<td><strapi:navTilesBlock /></td>
			</tr>
		</table>

						<h2>InstitutionalEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>InstitutionalEssentialId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachInstitutionalEssentialsNavTilesLinks var="idIter">
									<strapi:institutionalEssentialsNavTilesLinks>
										<tr>
											<td><a href="../institutionalEssentialsNavTilesLinks/show.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />"><strapi:institutionalEssentialsNavTilesLinksID /></a></td>
											<td><strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId /></td>
											<td><strapi:institutionalEssentialsNavTilesLinksNavTileId /></td>
											<td><strapi:institutionalEssentialsNavTilesLinksNavTileOrder /></td>
											<td><a href="../institutionalEssentialsNavTilesLinks/edit.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../institutionalEssentialsNavTilesLinks/delete.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:institutionalEssentialsNavTilesLinks>
								</strapi:foreachInstitutionalEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../institutionalEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add InstitutionalEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachInstitutionalEssentialsNavTilesLinks var="idIter">
			<strapi:institutionalEssentialsNavTilesLinks>
						<a href="../../strapi/institutionalEssentialsNavTilesLinks/institutionalEssentialsNavTilesLinks.jsp?ID=<strapi:institutionalEssentialsNavTilesLinksID />"><strapi:institutionalEssentialsNavTilesLinksID /></a>
		<strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId />
		<strapi:institutionalEssentialsNavTilesLinksNavTileId />
		<strapi:institutionalEssentialsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:institutionalEssentialsNavTilesLinks>
			</strapi:foreachInstitutionalEssentialsNavTilesLinks>

						<h2>OnboardingsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>OnboardingId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachOnboardingsNavTilesLinks var="idIter">
									<strapi:onboardingsNavTilesLinks>
										<tr>
											<td><a href="../onboardingsNavTilesLinks/show.jsp?ID=<strapi:onboardingsNavTilesLinksID />"><strapi:onboardingsNavTilesLinksID /></a></td>
											<td><strapi:onboardingsNavTilesLinksOnboardingId /></td>
											<td><strapi:onboardingsNavTilesLinksNavTileId /></td>
											<td><strapi:onboardingsNavTilesLinksNavTileOrder /></td>
											<td><a href="../onboardingsNavTilesLinks/edit.jsp?ID=<strapi:onboardingsNavTilesLinksID />">edit</a></td>
											<td><a href="../onboardingsNavTilesLinks/delete.jsp?ID=<strapi:onboardingsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:onboardingsNavTilesLinks>
								</strapi:foreachOnboardingsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../onboardingsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add OnboardingsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachOnboardingsNavTilesLinks var="idIter">
			<strapi:onboardingsNavTilesLinks>
						<a href="../../strapi/onboardingsNavTilesLinks/onboardingsNavTilesLinks.jsp?ID=<strapi:onboardingsNavTilesLinksID />"><strapi:onboardingsNavTilesLinksID /></a>
		<strapi:onboardingsNavTilesLinksOnboardingId />
		<strapi:onboardingsNavTilesLinksNavTileId />
		<strapi:onboardingsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:onboardingsNavTilesLinks>
			</strapi:foreachOnboardingsNavTilesLinks>

						<h2>ResearcherEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsNavTilesLinks var="idIter">
									<strapi:researcherEssentialsNavTilesLinks>
										<tr>
											<td><a href="../researcherEssentialsNavTilesLinks/show.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />"><strapi:researcherEssentialsNavTilesLinksID /></a></td>
											<td><strapi:researcherEssentialsNavTilesLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsNavTilesLinksNavTileId /></td>
											<td><strapi:researcherEssentialsNavTilesLinksNavTileOrder /></td>
											<td><a href="../researcherEssentialsNavTilesLinks/edit.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsNavTilesLinks/delete.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsNavTilesLinks>
								</strapi:foreachResearcherEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsNavTilesLinks var="idIter">
			<strapi:researcherEssentialsNavTilesLinks>
						<a href="../../strapi/researcherEssentialsNavTilesLinks/researcherEssentialsNavTilesLinks.jsp?ID=<strapi:researcherEssentialsNavTilesLinksID />"><strapi:researcherEssentialsNavTilesLinksID /></a>
		<strapi:researcherEssentialsNavTilesLinksResearcherEssentialId />
		<strapi:researcherEssentialsNavTilesLinksNavTileId />
		<strapi:researcherEssentialsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsNavTilesLinks>
			</strapi:foreachResearcherEssentialsNavTilesLinks>

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

						<h2>WorkstreamsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamsNavTilesLinks var="idIter">
									<strapi:workstreamsNavTilesLinks>
										<tr>
											<td><a href="../workstreamsNavTilesLinks/show.jsp?ID=<strapi:workstreamsNavTilesLinksID />"><strapi:workstreamsNavTilesLinksID /></a></td>
											<td><strapi:workstreamsNavTilesLinksWorkstreamId /></td>
											<td><strapi:workstreamsNavTilesLinksNavTileId /></td>
											<td><strapi:workstreamsNavTilesLinksNavTileOrder /></td>
											<td><a href="../workstreamsNavTilesLinks/edit.jsp?ID=<strapi:workstreamsNavTilesLinksID />">edit</a></td>
											<td><a href="../workstreamsNavTilesLinks/delete.jsp?ID=<strapi:workstreamsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamsNavTilesLinks>
								</strapi:foreachWorkstreamsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamsNavTilesLinks var="idIter">
			<strapi:workstreamsNavTilesLinks>
						<a href="../../strapi/workstreamsNavTilesLinks/workstreamsNavTilesLinks.jsp?ID=<strapi:workstreamsNavTilesLinksID />"><strapi:workstreamsNavTilesLinksID /></a>
		<strapi:workstreamsNavTilesLinksWorkstreamId />
		<strapi:workstreamsNavTilesLinksNavTileId />
		<strapi:workstreamsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamsNavTilesLinks>
			</strapi:foreachWorkstreamsNavTilesLinks>
</strapi:navTiles>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>