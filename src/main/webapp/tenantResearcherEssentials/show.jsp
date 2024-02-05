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
<strapi:tenantResearcherEssentials ID="${ID}">
	<h2>TenantResearcherEssentials: <strapi:tenantResearcherEssentialsID /></h2>
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
				<td><a href="edit.jsp?ID=<strapi:tenantResearcherEssentialsID />"><strapi:tenantResearcherEssentialsID /></a></td>
				<td><strapi:tenantResearcherEssentialsHeader /></td>
				<td><strapi:tenantResearcherEssentialsCreatedAt /></td>
				<td><strapi:tenantResearcherEssentialsUpdatedAt /></td>
				<td><strapi:tenantResearcherEssentialsPublishedAt /></td>
				<td><strapi:tenantResearcherEssentialsCreatedById /></td>
				<td><strapi:tenantResearcherEssentialsUpdatedById /></td>
			</tr>
		</table>

						<h2>TenantResearcherEssentialsAccessBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsAccessBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsAccessBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />"><strapi:tenantResearcherEssentialsAccessBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId /></td>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsAccessBlockLinks>
								</strapi:foreachTenantResearcherEssentialsAccessBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsAccessBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsAccessBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsAccessBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsAccessBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsAccessBlockLinks/tenantResearcherEssentialsAccessBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />"><strapi:tenantResearcherEssentialsAccessBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsAccessBlockLinks>
			</strapi:foreachTenantResearcherEssentialsAccessBlockLinks>

						<h2>TenantResearcherEssentialsDomainBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsDomainBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsDomainBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsDomainBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />"><strapi:tenantResearcherEssentialsDomainBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsDomainBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsDomainBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../tenantResearcherEssentialsDomainBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsDomainBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsDomainBlockLinks>
								</strapi:foreachTenantResearcherEssentialsDomainBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsDomainBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsDomainBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsDomainBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsDomainBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsDomainBlockLinks/tenantResearcherEssentialsDomainBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsDomainBlockLinksID />"><strapi:tenantResearcherEssentialsDomainBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsDomainBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsDomainBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsDomainBlockLinks>
			</strapi:foreachTenantResearcherEssentialsDomainBlockLinks>

						<h2>TenantResearcherEssentialsGovernanceBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsGovernanceBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />"><strapi:tenantResearcherEssentialsGovernanceBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsGovernanceBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsGovernanceBlockLinksContentImageBlockRightId /></td>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsGovernanceBlockLinks>
								</strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsGovernanceBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsGovernanceBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsGovernanceBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsGovernanceBlockLinks/tenantResearcherEssentialsGovernanceBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />"><strapi:tenantResearcherEssentialsGovernanceBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsGovernanceBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsGovernanceBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsGovernanceBlockLinks>
			</strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks>

						<h2>TenantResearcherEssentialsJoinBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsJoinBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsJoinBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsJoinBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />"><strapi:tenantResearcherEssentialsJoinBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsJoinBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../tenantResearcherEssentialsJoinBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsJoinBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsJoinBlockLinks>
								</strapi:foreachTenantResearcherEssentialsJoinBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsJoinBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsJoinBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsJoinBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsJoinBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsJoinBlockLinks/tenantResearcherEssentialsJoinBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsJoinBlockLinksID />"><strapi:tenantResearcherEssentialsJoinBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsJoinBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsJoinBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsJoinBlockLinks>
			</strapi:foreachTenantResearcherEssentialsJoinBlockLinks>

						<h2>TenantResearcherEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsNavTilesLinks var="idIter">
									<strapi:tenantResearcherEssentialsNavTilesLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsNavTilesLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsNavTilesLinksID />"><strapi:tenantResearcherEssentialsNavTilesLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsNavTilesLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsNavTilesLinksNavTileId /></td>
											<td><strapi:tenantResearcherEssentialsNavTilesLinksNavTileOrder /></td>
											<td><a href="../tenantResearcherEssentialsNavTilesLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsNavTilesLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsNavTilesLinks>
								</strapi:foreachTenantResearcherEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsNavTilesLinks var="idIter">
			<strapi:tenantResearcherEssentialsNavTilesLinks>
						<a href="../../strapi/tenantResearcherEssentialsNavTilesLinks/tenantResearcherEssentialsNavTilesLinks.jsp?ID=<strapi:tenantResearcherEssentialsNavTilesLinksID />"><strapi:tenantResearcherEssentialsNavTilesLinksID /></a>
		<strapi:tenantResearcherEssentialsNavTilesLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsNavTilesLinksNavTileId />
		<strapi:tenantResearcherEssentialsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsNavTilesLinks>
			</strapi:foreachTenantResearcherEssentialsNavTilesLinks>
</strapi:tenantResearcherEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>