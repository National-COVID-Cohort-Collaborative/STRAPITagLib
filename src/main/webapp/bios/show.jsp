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
<strapi:bios ID="${ID}">
	<h2>Bios: <strapi:biosID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Title</th>
			<th>Organization</th>
			<th>OrganizationUrl</th>
			<th>Website</th>
			<th>Orcid</th>
			<th>Email</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:biosID />"><strapi:biosID /></a></td>
				<td><strapi:biosFirstName /></td>
				<td><strapi:biosLastName /></td>
				<td><strapi:biosTitle /></td>
				<td><strapi:biosOrganization /></td>
				<td><strapi:biosOrganizationUrl /></td>
				<td><strapi:biosWebsite /></td>
				<td><strapi:biosOrcid /></td>
				<td><strapi:biosEmail /></td>
				<td><strapi:biosCreatedAt /></td>
				<td><strapi:biosUpdatedAt /></td>
				<td><strapi:biosPublishedAt /></td>
				<td><strapi:biosCreatedById /></td>
				<td><strapi:biosUpdatedById /></td>
			</tr>
		</table>

						<h2>BiosBioGroupsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>BioId</th>
									<th>BioGroupId</th>
									<th>BioGroupOrder</th>
									<th>BioOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachBiosBioGroupsLinks var="idIter">
									<strapi:biosBioGroupsLinks>
										<tr>
											<td><a href="../biosBioGroupsLinks/show.jsp?ID=<strapi:biosBioGroupsLinksID />"><strapi:biosBioGroupsLinksID /></a></td>
											<td><strapi:biosBioGroupsLinksBioId /></td>
											<td><strapi:biosBioGroupsLinksBioGroupId /></td>
											<td><strapi:biosBioGroupsLinksBioGroupOrder /></td>
											<td><strapi:biosBioGroupsLinksBioOrder /></td>
											<td><a href="../biosBioGroupsLinks/edit.jsp?ID=<strapi:biosBioGroupsLinksID />">edit</a></td>
											<td><a href="../biosBioGroupsLinks/delete.jsp?ID=<strapi:biosBioGroupsLinksID />">delete</a></td>
										</tr>
									</strapi:biosBioGroupsLinks>
								</strapi:foreachBiosBioGroupsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../biosBioGroupsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add BiosBioGroupsLinks</a>
						<br/><br/>

		<strapi:foreachBiosBioGroupsLinks var="idIter">
			<strapi:biosBioGroupsLinks>
						<a href="../../strapi/biosBioGroupsLinks/biosBioGroupsLinks.jsp?ID=<strapi:biosBioGroupsLinksID />"><strapi:biosBioGroupsLinksID /></a>
		<strapi:biosBioGroupsLinksBioId />
		<strapi:biosBioGroupsLinksBioGroupId />
		<strapi:biosBioGroupsLinksBioGroupOrder />
		<strapi:biosBioGroupsLinksBioOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:biosBioGroupsLinks>
			</strapi:foreachBiosBioGroupsLinks>

						<h2>DomainTeamsLeadsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainTeamId</th>
									<th>BioId</th>
									<th>BioOrder</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainTeamsLeadsLinks var="idIter">
									<strapi:domainTeamsLeadsLinks>
										<tr>
											<td><a href="../domainTeamsLeadsLinks/show.jsp?ID=<strapi:domainTeamsLeadsLinksID />"><strapi:domainTeamsLeadsLinksID /></a></td>
											<td><strapi:domainTeamsLeadsLinksDomainTeamId /></td>
											<td><strapi:domainTeamsLeadsLinksBioId /></td>
											<td><strapi:domainTeamsLeadsLinksBioOrder /></td>
											<td><strapi:domainTeamsLeadsLinksDomainTeamOrder /></td>
											<td><a href="../domainTeamsLeadsLinks/edit.jsp?ID=<strapi:domainTeamsLeadsLinksID />">edit</a></td>
											<td><a href="../domainTeamsLeadsLinks/delete.jsp?ID=<strapi:domainTeamsLeadsLinksID />">delete</a></td>
										</tr>
									</strapi:domainTeamsLeadsLinks>
								</strapi:foreachDomainTeamsLeadsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainTeamsLeadsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainTeamsLeadsLinks</a>
						<br/><br/>

		<strapi:foreachDomainTeamsLeadsLinks var="idIter">
			<strapi:domainTeamsLeadsLinks>
						<a href="../../strapi/domainTeamsLeadsLinks/domainTeamsLeadsLinks.jsp?ID=<strapi:domainTeamsLeadsLinksID />"><strapi:domainTeamsLeadsLinksID /></a>
		<strapi:domainTeamsLeadsLinksDomainTeamId />
		<strapi:domainTeamsLeadsLinksBioId />
		<strapi:domainTeamsLeadsLinksBioOrder />
		<strapi:domainTeamsLeadsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainTeamsLeadsLinks>
			</strapi:foreachDomainTeamsLeadsLinks>

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
</strapi:bios>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>