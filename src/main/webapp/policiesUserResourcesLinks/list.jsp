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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>