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
<strapi:missions ID="${ID}">
	<h2>Missions: <strapi:missionsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Block1</th>
			<th>Block2</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:missionsID />"><strapi:missionsID /></a></td>
				<td><strapi:missionsBlock1 /></td>
				<td><strapi:missionsBlock2 /></td>
				<td><strapi:missionsCreatedAt /></td>
				<td><strapi:missionsUpdatedAt /></td>
				<td><strapi:missionsPublishedAt /></td>
				<td><strapi:missionsCreatedById /></td>
				<td><strapi:missionsUpdatedById /></td>
			</tr>
		</table>

						<h2>MissionsPartnerGroupsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>MissionId</th>
									<th>PartnerGroupId</th>
									<th>PartnerGroupOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachMissionsPartnerGroupsLinks var="idIter">
									<strapi:missionsPartnerGroupsLinks>
										<tr>
											<td><a href="../missionsPartnerGroupsLinks/show.jsp?ID=<strapi:missionsPartnerGroupsLinksID />"><strapi:missionsPartnerGroupsLinksID /></a></td>
											<td><strapi:missionsPartnerGroupsLinksMissionId /></td>
											<td><strapi:missionsPartnerGroupsLinksPartnerGroupId /></td>
											<td><strapi:missionsPartnerGroupsLinksPartnerGroupOrder /></td>
											<td><a href="../missionsPartnerGroupsLinks/edit.jsp?ID=<strapi:missionsPartnerGroupsLinksID />">edit</a></td>
											<td><a href="../missionsPartnerGroupsLinks/delete.jsp?ID=<strapi:missionsPartnerGroupsLinksID />">delete</a></td>
										</tr>
									</strapi:missionsPartnerGroupsLinks>
								</strapi:foreachMissionsPartnerGroupsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../missionsPartnerGroupsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add MissionsPartnerGroupsLinks</a>
						<br/><br/>

		<strapi:foreachMissionsPartnerGroupsLinks var="idIter">
			<strapi:missionsPartnerGroupsLinks>
						<a href="../../strapi/missionsPartnerGroupsLinks/missionsPartnerGroupsLinks.jsp?ID=<strapi:missionsPartnerGroupsLinksID />"><strapi:missionsPartnerGroupsLinksID /></a>
		<strapi:missionsPartnerGroupsLinksMissionId />
		<strapi:missionsPartnerGroupsLinksPartnerGroupId />
		<strapi:missionsPartnerGroupsLinksPartnerGroupOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:missionsPartnerGroupsLinks>
			</strapi:foreachMissionsPartnerGroupsLinks>
</strapi:missions>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>