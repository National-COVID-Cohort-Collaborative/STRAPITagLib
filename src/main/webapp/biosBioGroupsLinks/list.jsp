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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>