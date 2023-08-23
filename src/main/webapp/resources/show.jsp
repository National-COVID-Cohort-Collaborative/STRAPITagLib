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
<strapi:resources ID="${ID}">
	<h2>Resources: <strapi:resourcesID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Description</th>
			<th>Url</th>
			<th>UrlLabel</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:resourcesID />"><strapi:resourcesID /></a></td>
				<td><strapi:resourcesHeader /></td>
				<td><strapi:resourcesDescription /></td>
				<td><strapi:resourcesUrl /></td>
				<td><strapi:resourcesUrlLabel /></td>
				<td><strapi:resourcesCreatedAt /></td>
				<td><strapi:resourcesUpdatedAt /></td>
				<td><strapi:resourcesPublishedAt /></td>
				<td><strapi:resourcesCreatedById /></td>
				<td><strapi:resourcesUpdatedById /></td>
			</tr>
		</table>

						<h2>PoliciesInstitutionResourcesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PolicyId</th>
									<th>ResourceId</th>
									<th>ResourceOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPoliciesInstitutionResourcesLinks var="idIter">
									<strapi:policiesInstitutionResourcesLinks>
										<tr>
											<td><a href="../policiesInstitutionResourcesLinks/show.jsp?ID=<strapi:policiesInstitutionResourcesLinksID />"><strapi:policiesInstitutionResourcesLinksID /></a></td>
											<td><strapi:policiesInstitutionResourcesLinksPolicyId /></td>
											<td><strapi:policiesInstitutionResourcesLinksResourceId /></td>
											<td><strapi:policiesInstitutionResourcesLinksResourceOrder /></td>
											<td><a href="../policiesInstitutionResourcesLinks/edit.jsp?ID=<strapi:policiesInstitutionResourcesLinksID />">edit</a></td>
											<td><a href="../policiesInstitutionResourcesLinks/delete.jsp?ID=<strapi:policiesInstitutionResourcesLinksID />">delete</a></td>
										</tr>
									</strapi:policiesInstitutionResourcesLinks>
								</strapi:foreachPoliciesInstitutionResourcesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../policiesInstitutionResourcesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PoliciesInstitutionResourcesLinks</a>
						<br/><br/>

		<strapi:foreachPoliciesInstitutionResourcesLinks var="idIter">
			<strapi:policiesInstitutionResourcesLinks>
						<a href="../../strapi/policiesInstitutionResourcesLinks/policiesInstitutionResourcesLinks.jsp?ID=<strapi:policiesInstitutionResourcesLinksID />"><strapi:policiesInstitutionResourcesLinksID /></a>
		<strapi:policiesInstitutionResourcesLinksPolicyId />
		<strapi:policiesInstitutionResourcesLinksResourceId />
		<strapi:policiesInstitutionResourcesLinksResourceOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:policiesInstitutionResourcesLinks>
			</strapi:foreachPoliciesInstitutionResourcesLinks>

						<h2>PoliciesUserResourcesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PolicyId</th>
									<th>ResourceId</th>
									<th>ResourceOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPoliciesUserResourcesLinks var="idIter">
									<strapi:policiesUserResourcesLinks>
										<tr>
											<td><a href="../policiesUserResourcesLinks/show.jsp?ID=<strapi:policiesUserResourcesLinksID />"><strapi:policiesUserResourcesLinksID /></a></td>
											<td><strapi:policiesUserResourcesLinksPolicyId /></td>
											<td><strapi:policiesUserResourcesLinksResourceId /></td>
											<td><strapi:policiesUserResourcesLinksResourceOrder /></td>
											<td><a href="../policiesUserResourcesLinks/edit.jsp?ID=<strapi:policiesUserResourcesLinksID />">edit</a></td>
											<td><a href="../policiesUserResourcesLinks/delete.jsp?ID=<strapi:policiesUserResourcesLinksID />">delete</a></td>
										</tr>
									</strapi:policiesUserResourcesLinks>
								</strapi:foreachPoliciesUserResourcesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../policiesUserResourcesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PoliciesUserResourcesLinks</a>
						<br/><br/>

		<strapi:foreachPoliciesUserResourcesLinks var="idIter">
			<strapi:policiesUserResourcesLinks>
						<a href="../../strapi/policiesUserResourcesLinks/policiesUserResourcesLinks.jsp?ID=<strapi:policiesUserResourcesLinksID />"><strapi:policiesUserResourcesLinksID /></a>
		<strapi:policiesUserResourcesLinksPolicyId />
		<strapi:policiesUserResourcesLinksResourceId />
		<strapi:policiesUserResourcesLinksResourceOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:policiesUserResourcesLinks>
			</strapi:foreachPoliciesUserResourcesLinks>

						<h2>TrainingsAdditionalResourcesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TrainingId</th>
									<th>ResourceId</th>
									<th>ResourceOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTrainingsAdditionalResourcesLinks var="idIter">
									<strapi:trainingsAdditionalResourcesLinks>
										<tr>
											<td><a href="../trainingsAdditionalResourcesLinks/show.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />"><strapi:trainingsAdditionalResourcesLinksID /></a></td>
											<td><strapi:trainingsAdditionalResourcesLinksTrainingId /></td>
											<td><strapi:trainingsAdditionalResourcesLinksResourceId /></td>
											<td><strapi:trainingsAdditionalResourcesLinksResourceOrder /></td>
											<td><a href="../trainingsAdditionalResourcesLinks/edit.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />">edit</a></td>
											<td><a href="../trainingsAdditionalResourcesLinks/delete.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsAdditionalResourcesLinks>
								</strapi:foreachTrainingsAdditionalResourcesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsAdditionalResourcesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsAdditionalResourcesLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsAdditionalResourcesLinks var="idIter">
			<strapi:trainingsAdditionalResourcesLinks>
						<a href="../../strapi/trainingsAdditionalResourcesLinks/trainingsAdditionalResourcesLinks.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />"><strapi:trainingsAdditionalResourcesLinksID /></a>
		<strapi:trainingsAdditionalResourcesLinksTrainingId />
		<strapi:trainingsAdditionalResourcesLinksResourceId />
		<strapi:trainingsAdditionalResourcesLinksResourceOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsAdditionalResourcesLinks>
			</strapi:foreachTrainingsAdditionalResourcesLinks>

						<h2>TrainingsPortalResourcesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TrainingId</th>
									<th>ResourceId</th>
									<th>ResourceOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTrainingsPortalResourcesLinks var="idIter">
									<strapi:trainingsPortalResourcesLinks>
										<tr>
											<td><a href="../trainingsPortalResourcesLinks/show.jsp?ID=<strapi:trainingsPortalResourcesLinksID />"><strapi:trainingsPortalResourcesLinksID /></a></td>
											<td><strapi:trainingsPortalResourcesLinksTrainingId /></td>
											<td><strapi:trainingsPortalResourcesLinksResourceId /></td>
											<td><strapi:trainingsPortalResourcesLinksResourceOrder /></td>
											<td><a href="../trainingsPortalResourcesLinks/edit.jsp?ID=<strapi:trainingsPortalResourcesLinksID />">edit</a></td>
											<td><a href="../trainingsPortalResourcesLinks/delete.jsp?ID=<strapi:trainingsPortalResourcesLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsPortalResourcesLinks>
								</strapi:foreachTrainingsPortalResourcesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsPortalResourcesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsPortalResourcesLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsPortalResourcesLinks var="idIter">
			<strapi:trainingsPortalResourcesLinks>
						<a href="../../strapi/trainingsPortalResourcesLinks/trainingsPortalResourcesLinks.jsp?ID=<strapi:trainingsPortalResourcesLinksID />"><strapi:trainingsPortalResourcesLinksID /></a>
		<strapi:trainingsPortalResourcesLinksTrainingId />
		<strapi:trainingsPortalResourcesLinksResourceId />
		<strapi:trainingsPortalResourcesLinksResourceOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsPortalResourcesLinks>
			</strapi:foreachTrainingsPortalResourcesLinks>

						<h2>TrainingsSharedResourcesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TrainingId</th>
									<th>ResourceId</th>
									<th>ResourceOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTrainingsSharedResourcesLinks var="idIter">
									<strapi:trainingsSharedResourcesLinks>
										<tr>
											<td><a href="../trainingsSharedResourcesLinks/show.jsp?ID=<strapi:trainingsSharedResourcesLinksID />"><strapi:trainingsSharedResourcesLinksID /></a></td>
											<td><strapi:trainingsSharedResourcesLinksTrainingId /></td>
											<td><strapi:trainingsSharedResourcesLinksResourceId /></td>
											<td><strapi:trainingsSharedResourcesLinksResourceOrder /></td>
											<td><a href="../trainingsSharedResourcesLinks/edit.jsp?ID=<strapi:trainingsSharedResourcesLinksID />">edit</a></td>
											<td><a href="../trainingsSharedResourcesLinks/delete.jsp?ID=<strapi:trainingsSharedResourcesLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsSharedResourcesLinks>
								</strapi:foreachTrainingsSharedResourcesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsSharedResourcesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsSharedResourcesLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsSharedResourcesLinks var="idIter">
			<strapi:trainingsSharedResourcesLinks>
						<a href="../../strapi/trainingsSharedResourcesLinks/trainingsSharedResourcesLinks.jsp?ID=<strapi:trainingsSharedResourcesLinksID />"><strapi:trainingsSharedResourcesLinksID /></a>
		<strapi:trainingsSharedResourcesLinksTrainingId />
		<strapi:trainingsSharedResourcesLinksResourceId />
		<strapi:trainingsSharedResourcesLinksResourceOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsSharedResourcesLinks>
			</strapi:foreachTrainingsSharedResourcesLinks>
</strapi:resources>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>