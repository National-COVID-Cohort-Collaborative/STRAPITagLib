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
<strapi:researcherEssentials ID="${ID}">
	<h2>ResearcherEssentials: <strapi:researcherEssentialsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:researcherEssentialsID />"><strapi:researcherEssentialsID /></a></td>
				<td><strapi:researcherEssentialsHeader /></td>
				<td><strapi:researcherEssentialsCreatedAt /></td>
				<td><strapi:researcherEssentialsUpdatedAt /></td>
				<td><strapi:researcherEssentialsPublishedAt /></td>
				<td><strapi:researcherEssentialsCreatedById /></td>
				<td><strapi:researcherEssentialsUpdatedById /></td>
			</tr>
		</table>

						<h2>ResearcherEssentialsAccessBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsAccessBlockLinks var="idIter">
									<strapi:researcherEssentialsAccessBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsAccessBlockLinks/show.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />"><strapi:researcherEssentialsAccessBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId /></td>
											<td><a href="../researcherEssentialsAccessBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsAccessBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsAccessBlockLinks>
								</strapi:foreachResearcherEssentialsAccessBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsAccessBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsAccessBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsAccessBlockLinks var="idIter">
			<strapi:researcherEssentialsAccessBlockLinks>
						<a href="../../strapi/researcherEssentialsAccessBlockLinks/researcherEssentialsAccessBlockLinks.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />"><strapi:researcherEssentialsAccessBlockLinksID /></a>
		<strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsAccessBlockLinks>
			</strapi:foreachResearcherEssentialsAccessBlockLinks>

						<h2>ResearcherEssentialsDomainBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsDomainBlockLinks var="idIter">
									<strapi:researcherEssentialsDomainBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsDomainBlockLinks/show.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />"><strapi:researcherEssentialsDomainBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../researcherEssentialsDomainBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsDomainBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsDomainBlockLinks>
								</strapi:foreachResearcherEssentialsDomainBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsDomainBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsDomainBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsDomainBlockLinks var="idIter">
			<strapi:researcherEssentialsDomainBlockLinks>
						<a href="../../strapi/researcherEssentialsDomainBlockLinks/researcherEssentialsDomainBlockLinks.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />"><strapi:researcherEssentialsDomainBlockLinksID /></a>
		<strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsDomainBlockLinks>
			</strapi:foreachResearcherEssentialsDomainBlockLinks>

						<h2>ResearcherEssentialsGovernanceBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsGovernanceBlockLinks var="idIter">
									<strapi:researcherEssentialsGovernanceBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/show.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />"><strapi:researcherEssentialsGovernanceBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsGovernanceBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsGovernanceBlockLinksContentImageBlockRightId /></td>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsGovernanceBlockLinks>
								</strapi:foreachResearcherEssentialsGovernanceBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsGovernanceBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsGovernanceBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsGovernanceBlockLinks var="idIter">
			<strapi:researcherEssentialsGovernanceBlockLinks>
						<a href="../../strapi/researcherEssentialsGovernanceBlockLinks/researcherEssentialsGovernanceBlockLinks.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />"><strapi:researcherEssentialsGovernanceBlockLinksID /></a>
		<strapi:researcherEssentialsGovernanceBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsGovernanceBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsGovernanceBlockLinks>
			</strapi:foreachResearcherEssentialsGovernanceBlockLinks>

						<h2>ResearcherEssentialsJoinBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsJoinBlockLinks var="idIter">
									<strapi:researcherEssentialsJoinBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsJoinBlockLinks/show.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />"><strapi:researcherEssentialsJoinBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../researcherEssentialsJoinBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsJoinBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsJoinBlockLinks>
								</strapi:foreachResearcherEssentialsJoinBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsJoinBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsJoinBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsJoinBlockLinks var="idIter">
			<strapi:researcherEssentialsJoinBlockLinks>
						<a href="../../strapi/researcherEssentialsJoinBlockLinks/researcherEssentialsJoinBlockLinks.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />"><strapi:researcherEssentialsJoinBlockLinksID /></a>
		<strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsJoinBlockLinks>
			</strapi:foreachResearcherEssentialsJoinBlockLinks>

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
</strapi:researcherEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>