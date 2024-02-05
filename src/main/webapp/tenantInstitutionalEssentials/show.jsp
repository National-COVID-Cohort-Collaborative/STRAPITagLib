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
<strapi:tenantInstitutionalEssentials ID="${ID}">
	<h2>TenantInstitutionalEssentials: <strapi:tenantInstitutionalEssentialsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Header2</th>
			<th>Block</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantInstitutionalEssentialsID />"><strapi:tenantInstitutionalEssentialsID /></a></td>
				<td><strapi:tenantInstitutionalEssentialsHeader /></td>
				<td><strapi:tenantInstitutionalEssentialsHeader2 /></td>
				<td><strapi:tenantInstitutionalEssentialsBlock /></td>
				<td><strapi:tenantInstitutionalEssentialsCreatedAt /></td>
				<td><strapi:tenantInstitutionalEssentialsUpdatedAt /></td>
				<td><strapi:tenantInstitutionalEssentialsPublishedAt /></td>
				<td><strapi:tenantInstitutionalEssentialsCreatedById /></td>
				<td><strapi:tenantInstitutionalEssentialsUpdatedById /></td>
			</tr>
		</table>

						<h2>TenantInstitutionalEssentialsJoinBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantInstitutionalEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks var="idIter">
									<strapi:tenantInstitutionalEssentialsJoinBlockLinks>
										<tr>
											<td><a href="../tenantInstitutionalEssentialsJoinBlockLinks/show.jsp?ID=<strapi:tenantInstitutionalEssentialsJoinBlockLinksID />"><strapi:tenantInstitutionalEssentialsJoinBlockLinksID /></a></td>
											<td><strapi:tenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId /></td>
											<td><strapi:tenantInstitutionalEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../tenantInstitutionalEssentialsJoinBlockLinks/edit.jsp?ID=<strapi:tenantInstitutionalEssentialsJoinBlockLinksID />">edit</a></td>
											<td><a href="../tenantInstitutionalEssentialsJoinBlockLinks/delete.jsp?ID=<strapi:tenantInstitutionalEssentialsJoinBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantInstitutionalEssentialsJoinBlockLinks>
								</strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantInstitutionalEssentialsJoinBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantInstitutionalEssentialsJoinBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks var="idIter">
			<strapi:tenantInstitutionalEssentialsJoinBlockLinks>
						<a href="../../strapi/tenantInstitutionalEssentialsJoinBlockLinks/tenantInstitutionalEssentialsJoinBlockLinks.jsp?ID=<strapi:tenantInstitutionalEssentialsJoinBlockLinksID />"><strapi:tenantInstitutionalEssentialsJoinBlockLinksID /></a>
		<strapi:tenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId />
		<strapi:tenantInstitutionalEssentialsJoinBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantInstitutionalEssentialsJoinBlockLinks>
			</strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks>

						<h2>TenantInstitutionalEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantInstitutionalEssentialId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantInstitutionalEssentialsNavTilesLinks var="idIter">
									<strapi:tenantInstitutionalEssentialsNavTilesLinks>
										<tr>
											<td><a href="../tenantInstitutionalEssentialsNavTilesLinks/show.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />"><strapi:tenantInstitutionalEssentialsNavTilesLinksID /></a></td>
											<td><strapi:tenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId /></td>
											<td><strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileId /></td>
											<td><strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileOrder /></td>
											<td><a href="../tenantInstitutionalEssentialsNavTilesLinks/edit.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../tenantInstitutionalEssentialsNavTilesLinks/delete.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:tenantInstitutionalEssentialsNavTilesLinks>
								</strapi:foreachTenantInstitutionalEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantInstitutionalEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantInstitutionalEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachTenantInstitutionalEssentialsNavTilesLinks var="idIter">
			<strapi:tenantInstitutionalEssentialsNavTilesLinks>
						<a href="../../strapi/tenantInstitutionalEssentialsNavTilesLinks/tenantInstitutionalEssentialsNavTilesLinks.jsp?ID=<strapi:tenantInstitutionalEssentialsNavTilesLinksID />"><strapi:tenantInstitutionalEssentialsNavTilesLinksID /></a>
		<strapi:tenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId />
		<strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileId />
		<strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantInstitutionalEssentialsNavTilesLinks>
			</strapi:foreachTenantInstitutionalEssentialsNavTilesLinks>

						<h2>TenantInstitutionalEssentialsStepLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantInstitutionalEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantInstitutionalEssentialsStepLinks var="idIter">
									<strapi:tenantInstitutionalEssentialsStepLinks>
										<tr>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/show.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />"><strapi:tenantInstitutionalEssentialsStepLinksID /></a></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId /></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId /></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder /></td>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/edit.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />">edit</a></td>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/delete.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />">delete</a></td>
										</tr>
									</strapi:tenantInstitutionalEssentialsStepLinks>
								</strapi:foreachTenantInstitutionalEssentialsStepLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantInstitutionalEssentialsStepLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantInstitutionalEssentialsStepLinks</a>
						<br/><br/>

		<strapi:foreachTenantInstitutionalEssentialsStepLinks var="idIter">
			<strapi:tenantInstitutionalEssentialsStepLinks>
						<a href="../../strapi/tenantInstitutionalEssentialsStepLinks/tenantInstitutionalEssentialsStepLinks.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />"><strapi:tenantInstitutionalEssentialsStepLinksID /></a>
		<strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId />
		<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId />
		<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantInstitutionalEssentialsStepLinks>
			</strapi:foreachTenantInstitutionalEssentialsStepLinks>
</strapi:tenantInstitutionalEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>