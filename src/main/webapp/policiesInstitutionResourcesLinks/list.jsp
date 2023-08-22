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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>