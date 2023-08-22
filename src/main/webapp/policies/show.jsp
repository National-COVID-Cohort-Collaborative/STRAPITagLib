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
<strapi:policies ID="${ID}">
	<h2>Policies: <strapi:policiesID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>IntroBlock</th>
			<th>ResourceHeader</th>
			<th>InstitutionHeader</th>
			<th>UserHeader</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:policiesID />"><strapi:policiesID /></a></td>
				<td><strapi:policiesHeader /></td>
				<td><strapi:policiesIntroBlock /></td>
				<td><strapi:policiesResourceHeader /></td>
				<td><strapi:policiesInstitutionHeader /></td>
				<td><strapi:policiesUserHeader /></td>
				<td><strapi:policiesCreatedAt /></td>
				<td><strapi:policiesUpdatedAt /></td>
				<td><strapi:policiesPublishedAt /></td>
				<td><strapi:policiesCreatedById /></td>
				<td><strapi:policiesUpdatedById /></td>
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
</strapi:policies>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>