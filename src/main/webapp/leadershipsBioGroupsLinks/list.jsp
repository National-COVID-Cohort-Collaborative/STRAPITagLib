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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>