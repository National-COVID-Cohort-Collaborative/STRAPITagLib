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
<strapi:partnerGroups ID="${ID}">
	<h2>PartnerGroups: <strapi:partnerGroupsID /></h2>
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
				<td><a href="edit.jsp?ID=<strapi:partnerGroupsID />"><strapi:partnerGroupsID /></a></td>
				<td><strapi:partnerGroupsName /></td>
				<td><strapi:partnerGroupsCreatedAt /></td>
				<td><strapi:partnerGroupsUpdatedAt /></td>
				<td><strapi:partnerGroupsPublishedAt /></td>
				<td><strapi:partnerGroupsCreatedById /></td>
				<td><strapi:partnerGroupsUpdatedById /></td>
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

						<h2>PartnersPartnerGroupLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PartnerId</th>
									<th>PartnerGroupId</th>
									<th>PartnerOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPartnersPartnerGroupLinks var="idIter">
									<strapi:partnersPartnerGroupLinks>
										<tr>
											<td><a href="../partnersPartnerGroupLinks/show.jsp?ID=<strapi:partnersPartnerGroupLinksID />"><strapi:partnersPartnerGroupLinksID /></a></td>
											<td><strapi:partnersPartnerGroupLinksPartnerId /></td>
											<td><strapi:partnersPartnerGroupLinksPartnerGroupId /></td>
											<td><strapi:partnersPartnerGroupLinksPartnerOrder /></td>
											<td><a href="../partnersPartnerGroupLinks/edit.jsp?ID=<strapi:partnersPartnerGroupLinksID />">edit</a></td>
											<td><a href="../partnersPartnerGroupLinks/delete.jsp?ID=<strapi:partnersPartnerGroupLinksID />">delete</a></td>
										</tr>
									</strapi:partnersPartnerGroupLinks>
								</strapi:foreachPartnersPartnerGroupLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../partnersPartnerGroupLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PartnersPartnerGroupLinks</a>
						<br/><br/>

		<strapi:foreachPartnersPartnerGroupLinks var="idIter">
			<strapi:partnersPartnerGroupLinks>
						<a href="../../strapi/partnersPartnerGroupLinks/partnersPartnerGroupLinks.jsp?ID=<strapi:partnersPartnerGroupLinksID />"><strapi:partnersPartnerGroupLinksID /></a>
		<strapi:partnersPartnerGroupLinksPartnerId />
		<strapi:partnersPartnerGroupLinksPartnerGroupId />
		<strapi:partnersPartnerGroupLinksPartnerOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:partnersPartnerGroupLinks>
			</strapi:foreachPartnersPartnerGroupLinks>
</strapi:partnerGroups>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>