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
<strapi:bioGroups ID="${ID}">
	<h2>BioGroups: <strapi:bioGroupsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Name</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:bioGroupsID />"><strapi:bioGroupsID /></a></td>
				<td><strapi:bioGroupsName /></td>
				<td><strapi:bioGroupsCreatedAt /></td>
				<td><strapi:bioGroupsUpdatedAt /></td>
				<td><strapi:bioGroupsPublishedAt /></td>
				<td><strapi:bioGroupsCreatedById /></td>
				<td><strapi:bioGroupsUpdatedById /></td>
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

						<h2>LeadershipsBioGroupsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>LeadershipId</th>
									<th>BioGroupId</th>
									<th>BioGroupOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachLeadershipsBioGroupsLinks var="idIter">
									<strapi:leadershipsBioGroupsLinks>
										<tr>
											<td><a href="../leadershipsBioGroupsLinks/show.jsp?ID=<strapi:leadershipsBioGroupsLinksID />"><strapi:leadershipsBioGroupsLinksID /></a></td>
											<td><strapi:leadershipsBioGroupsLinksLeadershipId /></td>
											<td><strapi:leadershipsBioGroupsLinksBioGroupId /></td>
											<td><strapi:leadershipsBioGroupsLinksBioGroupOrder /></td>
											<td><a href="../leadershipsBioGroupsLinks/edit.jsp?ID=<strapi:leadershipsBioGroupsLinksID />">edit</a></td>
											<td><a href="../leadershipsBioGroupsLinks/delete.jsp?ID=<strapi:leadershipsBioGroupsLinksID />">delete</a></td>
										</tr>
									</strapi:leadershipsBioGroupsLinks>
								</strapi:foreachLeadershipsBioGroupsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../leadershipsBioGroupsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add LeadershipsBioGroupsLinks</a>
						<br/><br/>

		<strapi:foreachLeadershipsBioGroupsLinks var="idIter">
			<strapi:leadershipsBioGroupsLinks>
						<a href="../../strapi/leadershipsBioGroupsLinks/leadershipsBioGroupsLinks.jsp?ID=<strapi:leadershipsBioGroupsLinksID />"><strapi:leadershipsBioGroupsLinksID /></a>
		<strapi:leadershipsBioGroupsLinksLeadershipId />
		<strapi:leadershipsBioGroupsLinksBioGroupId />
		<strapi:leadershipsBioGroupsLinksBioGroupOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:leadershipsBioGroupsLinks>
			</strapi:foreachLeadershipsBioGroupsLinks>
</strapi:bioGroups>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>