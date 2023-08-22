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

						<h2>DomainTeams List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Description</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Summary</th>
									<th>SupplementalInformation</th>
									<th>GoogleDriveUrl</th>
									<th>GoogleDriveLinkText</th>
									<th>GoogleGroupEmail</th>
									<th>JoinUrl</th>
									<th>JoinLinkText</th>
									<th>SlackUrl</th>
									<th>SlackLinkText</th>
									<th>CrossCutting</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainTeams var="idIter">
									<strapi:domainTeams>
										<tr>
											<td><a href="../domainTeams/show.jsp?ID=<strapi:domainTeamsID />"><strapi:domainTeamsID /></a></td>
											<td><strapi:domainTeamsName /></td>
											<td><strapi:domainTeamsDescription /></td>
											<td><strapi:domainTeamsCreatedAt /></td>
											<td><strapi:domainTeamsUpdatedAt /></td>
											<td><strapi:domainTeamsPublishedAt /></td>
											<td><strapi:domainTeamsCreatedById /></td>
											<td><strapi:domainTeamsUpdatedById /></td>
											<td><strapi:domainTeamsSummary /></td>
											<td><strapi:domainTeamsSupplementalInformation /></td>
											<td><strapi:domainTeamsGoogleDriveUrl /></td>
											<td><strapi:domainTeamsGoogleDriveLinkText /></td>
											<td><strapi:domainTeamsGoogleGroupEmail /></td>
											<td><strapi:domainTeamsJoinUrl /></td>
											<td><strapi:domainTeamsJoinLinkText /></td>
											<td><strapi:domainTeamsSlackUrl /></td>
											<td><strapi:domainTeamsSlackLinkText /></td>
											<td><strapi:domainTeamsCrossCutting /></td>
											<td><a href="../domainTeams/edit.jsp?ID=<strapi:domainTeamsID />">edit</a></td>
											<td><a href="../domainTeams/delete.jsp?ID=<strapi:domainTeamsID />">delete</a></td>
										</tr>
									</strapi:domainTeams>
								</strapi:foreachDomainTeams>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainTeams/add.jsp">add DomainTeams</a>
						<br/><br/>

		<strapi:foreachDomainTeams var="idIter">
			<strapi:domainTeams>
						<a href="../../strapi/domainTeams/domainTeams.jsp?ID=<strapi:domainTeamsID />"><strapi:domainTeamsID /></a>
		<strapi:domainTeamsName />
		<strapi:domainTeamsDescription />
		<strapi:domainTeamsCreatedAt />
		<strapi:domainTeamsUpdatedAt />
		<strapi:domainTeamsPublishedAt />
		<strapi:domainTeamsCreatedById />
		<strapi:domainTeamsUpdatedById />
		<strapi:domainTeamsSummary />
		<strapi:domainTeamsSupplementalInformation />
		<strapi:domainTeamsGoogleDriveUrl />
		<strapi:domainTeamsGoogleDriveLinkText />
		<strapi:domainTeamsGoogleGroupEmail />
		<strapi:domainTeamsJoinUrl />
		<strapi:domainTeamsJoinLinkText />
		<strapi:domainTeamsSlackUrl />
		<strapi:domainTeamsSlackLinkText />
		<strapi:domainTeamsCrossCutting />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainTeams>
			</strapi:foreachDomainTeams>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>