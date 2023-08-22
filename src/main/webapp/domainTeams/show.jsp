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
<strapi:domainTeams ID="${ID}">
	<h2>DomainTeams: <strapi:domainTeamsID /></h2>
		<table border=1>
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
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:domainTeamsID />"><strapi:domainTeamsID /></a></td>
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
			</tr>
		</table>

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

						<h2>DomainTeamsYouTubeVideosLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainTeamId</th>
									<th>YouTubeVideoId</th>
									<th>YouTubeVideoOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainTeamsYouTubeVideosLinks var="idIter">
									<strapi:domainTeamsYouTubeVideosLinks>
										<tr>
											<td><a href="../domainTeamsYouTubeVideosLinks/show.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />"><strapi:domainTeamsYouTubeVideosLinksID /></a></td>
											<td><strapi:domainTeamsYouTubeVideosLinksDomainTeamId /></td>
											<td><strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId /></td>
											<td><strapi:domainTeamsYouTubeVideosLinksYouTubeVideoOrder /></td>
											<td><a href="../domainTeamsYouTubeVideosLinks/edit.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />">edit</a></td>
											<td><a href="../domainTeamsYouTubeVideosLinks/delete.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />">delete</a></td>
										</tr>
									</strapi:domainTeamsYouTubeVideosLinks>
								</strapi:foreachDomainTeamsYouTubeVideosLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainTeamsYouTubeVideosLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainTeamsYouTubeVideosLinks</a>
						<br/><br/>

		<strapi:foreachDomainTeamsYouTubeVideosLinks var="idIter">
			<strapi:domainTeamsYouTubeVideosLinks>
						<a href="../../strapi/domainTeamsYouTubeVideosLinks/domainTeamsYouTubeVideosLinks.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />"><strapi:domainTeamsYouTubeVideosLinksID /></a>
		<strapi:domainTeamsYouTubeVideosLinksDomainTeamId />
		<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId />
		<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainTeamsYouTubeVideosLinks>
			</strapi:foreachDomainTeamsYouTubeVideosLinks>

						<h2>DomainsCrossCuttingTeamsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainId</th>
									<th>DomainTeamId</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainsCrossCuttingTeamsLinks var="idIter">
									<strapi:domainsCrossCuttingTeamsLinks>
										<tr>
											<td><a href="../domainsCrossCuttingTeamsLinks/show.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />"><strapi:domainsCrossCuttingTeamsLinksID /></a></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainId /></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainTeamId /></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder /></td>
											<td><a href="../domainsCrossCuttingTeamsLinks/edit.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />">edit</a></td>
											<td><a href="../domainsCrossCuttingTeamsLinks/delete.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />">delete</a></td>
										</tr>
									</strapi:domainsCrossCuttingTeamsLinks>
								</strapi:foreachDomainsCrossCuttingTeamsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainsCrossCuttingTeamsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainsCrossCuttingTeamsLinks</a>
						<br/><br/>

		<strapi:foreachDomainsCrossCuttingTeamsLinks var="idIter">
			<strapi:domainsCrossCuttingTeamsLinks>
						<a href="../../strapi/domainsCrossCuttingTeamsLinks/domainsCrossCuttingTeamsLinks.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />"><strapi:domainsCrossCuttingTeamsLinksID /></a>
		<strapi:domainsCrossCuttingTeamsLinksDomainId />
		<strapi:domainsCrossCuttingTeamsLinksDomainTeamId />
		<strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainsCrossCuttingTeamsLinks>
			</strapi:foreachDomainsCrossCuttingTeamsLinks>

						<h2>DomainsDomainTeamsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainId</th>
									<th>DomainTeamId</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainsDomainTeamsLinks var="idIter">
									<strapi:domainsDomainTeamsLinks>
										<tr>
											<td><a href="../domainsDomainTeamsLinks/show.jsp?ID=<strapi:domainsDomainTeamsLinksID />"><strapi:domainsDomainTeamsLinksID /></a></td>
											<td><strapi:domainsDomainTeamsLinksDomainId /></td>
											<td><strapi:domainsDomainTeamsLinksDomainTeamId /></td>
											<td><strapi:domainsDomainTeamsLinksDomainTeamOrder /></td>
											<td><a href="../domainsDomainTeamsLinks/edit.jsp?ID=<strapi:domainsDomainTeamsLinksID />">edit</a></td>
											<td><a href="../domainsDomainTeamsLinks/delete.jsp?ID=<strapi:domainsDomainTeamsLinksID />">delete</a></td>
										</tr>
									</strapi:domainsDomainTeamsLinks>
								</strapi:foreachDomainsDomainTeamsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainsDomainTeamsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainsDomainTeamsLinks</a>
						<br/><br/>

		<strapi:foreachDomainsDomainTeamsLinks var="idIter">
			<strapi:domainsDomainTeamsLinks>
						<a href="../../strapi/domainsDomainTeamsLinks/domainsDomainTeamsLinks.jsp?ID=<strapi:domainsDomainTeamsLinksID />"><strapi:domainsDomainTeamsLinksID /></a>
		<strapi:domainsDomainTeamsLinksDomainId />
		<strapi:domainsDomainTeamsLinksDomainTeamId />
		<strapi:domainsDomainTeamsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainsDomainTeamsLinks>
			</strapi:foreachDomainsDomainTeamsLinks>

						<h2>LandingPagesDomainTeamsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>LandingPageId</th>
									<th>DomainTeamId</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachLandingPagesDomainTeamsLinks var="idIter">
									<strapi:landingPagesDomainTeamsLinks>
										<tr>
											<td><a href="../landingPagesDomainTeamsLinks/show.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />"><strapi:landingPagesDomainTeamsLinksID /></a></td>
											<td><strapi:landingPagesDomainTeamsLinksLandingPageId /></td>
											<td><strapi:landingPagesDomainTeamsLinksDomainTeamId /></td>
											<td><strapi:landingPagesDomainTeamsLinksDomainTeamOrder /></td>
											<td><a href="../landingPagesDomainTeamsLinks/edit.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />">edit</a></td>
											<td><a href="../landingPagesDomainTeamsLinks/delete.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />">delete</a></td>
										</tr>
									</strapi:landingPagesDomainTeamsLinks>
								</strapi:foreachLandingPagesDomainTeamsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../landingPagesDomainTeamsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add LandingPagesDomainTeamsLinks</a>
						<br/><br/>

		<strapi:foreachLandingPagesDomainTeamsLinks var="idIter">
			<strapi:landingPagesDomainTeamsLinks>
						<a href="../../strapi/landingPagesDomainTeamsLinks/landingPagesDomainTeamsLinks.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />"><strapi:landingPagesDomainTeamsLinksID /></a>
		<strapi:landingPagesDomainTeamsLinksLandingPageId />
		<strapi:landingPagesDomainTeamsLinksDomainTeamId />
		<strapi:landingPagesDomainTeamsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:landingPagesDomainTeamsLinks>
			</strapi:foreachLandingPagesDomainTeamsLinks>
</strapi:domainTeams>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>