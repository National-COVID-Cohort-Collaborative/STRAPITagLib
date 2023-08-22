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
<strapi:enclaveEssentials ID="${ID}">
	<h2>EnclaveEssentials: <strapi:enclaveEssentialsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Block1</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:enclaveEssentialsID />"><strapi:enclaveEssentialsID /></a></td>
				<td><strapi:enclaveEssentialsHeader /></td>
				<td><strapi:enclaveEssentialsBlock1 /></td>
				<td><strapi:enclaveEssentialsCreatedAt /></td>
				<td><strapi:enclaveEssentialsUpdatedAt /></td>
				<td><strapi:enclaveEssentialsPublishedAt /></td>
				<td><strapi:enclaveEssentialsCreatedById /></td>
				<td><strapi:enclaveEssentialsUpdatedById /></td>
			</tr>
		</table>

						<h2>EnclaveEssentialsDescriptionLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>EnclaveEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachEnclaveEssentialsDescriptionLinks var="idIter">
									<strapi:enclaveEssentialsDescriptionLinks>
										<tr>
											<td><a href="../enclaveEssentialsDescriptionLinks/show.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />"><strapi:enclaveEssentialsDescriptionLinksID /></a></td>
											<td><strapi:enclaveEssentialsDescriptionLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsDescriptionLinksContentImageBlockLeftId /></td>
											<td><a href="../enclaveEssentialsDescriptionLinks/edit.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsDescriptionLinks/delete.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsDescriptionLinks>
								</strapi:foreachEnclaveEssentialsDescriptionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsDescriptionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsDescriptionLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsDescriptionLinks var="idIter">
			<strapi:enclaveEssentialsDescriptionLinks>
						<a href="../../strapi/enclaveEssentialsDescriptionLinks/enclaveEssentialsDescriptionLinks.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />"><strapi:enclaveEssentialsDescriptionLinksID /></a>
		<strapi:enclaveEssentialsDescriptionLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsDescriptionLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsDescriptionLinks>
			</strapi:foreachEnclaveEssentialsDescriptionLinks>

						<h2>EnclaveEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>EnclaveEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th>ContentImageBlockLeftOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachEnclaveEssentialsNavTilesLinks var="idIter">
									<strapi:enclaveEssentialsNavTilesLinks>
										<tr>
											<td><a href="../enclaveEssentialsNavTilesLinks/show.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />"><strapi:enclaveEssentialsNavTilesLinksID /></a></td>
											<td><strapi:enclaveEssentialsNavTilesLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftId /></td>
											<td><strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftOrder /></td>
											<td><a href="../enclaveEssentialsNavTilesLinks/edit.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsNavTilesLinks/delete.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsNavTilesLinks>
								</strapi:foreachEnclaveEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsNavTilesLinks var="idIter">
			<strapi:enclaveEssentialsNavTilesLinks>
						<a href="../../strapi/enclaveEssentialsNavTilesLinks/enclaveEssentialsNavTilesLinks.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />"><strapi:enclaveEssentialsNavTilesLinksID /></a>
		<strapi:enclaveEssentialsNavTilesLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftId />
		<strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsNavTilesLinks>
			</strapi:foreachEnclaveEssentialsNavTilesLinks>

						<h2>EnclaveEssentialsUserTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>EnclaveEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th>ContentImageBlockLeftOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachEnclaveEssentialsUserTilesLinks var="idIter">
									<strapi:enclaveEssentialsUserTilesLinks>
										<tr>
											<td><a href="../enclaveEssentialsUserTilesLinks/show.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />"><strapi:enclaveEssentialsUserTilesLinksID /></a></td>
											<td><strapi:enclaveEssentialsUserTilesLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftId /></td>
											<td><strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftOrder /></td>
											<td><a href="../enclaveEssentialsUserTilesLinks/edit.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsUserTilesLinks/delete.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsUserTilesLinks>
								</strapi:foreachEnclaveEssentialsUserTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsUserTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsUserTilesLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsUserTilesLinks var="idIter">
			<strapi:enclaveEssentialsUserTilesLinks>
						<a href="../../strapi/enclaveEssentialsUserTilesLinks/enclaveEssentialsUserTilesLinks.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />"><strapi:enclaveEssentialsUserTilesLinksID /></a>
		<strapi:enclaveEssentialsUserTilesLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftId />
		<strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsUserTilesLinks>
			</strapi:foreachEnclaveEssentialsUserTilesLinks>
</strapi:enclaveEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>