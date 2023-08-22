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

						<h2>ExternalDatasetsSupportLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ExternalDatasetId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachExternalDatasetsSupportLinks var="idIter">
									<strapi:externalDatasetsSupportLinks>
										<tr>
											<td><a href="../externalDatasetsSupportLinks/show.jsp?ID=<strapi:externalDatasetsSupportLinksID />"><strapi:externalDatasetsSupportLinksID /></a></td>
											<td><strapi:externalDatasetsSupportLinksExternalDatasetId /></td>
											<td><strapi:externalDatasetsSupportLinksContentImageBlockLeftId /></td>
											<td><a href="../externalDatasetsSupportLinks/edit.jsp?ID=<strapi:externalDatasetsSupportLinksID />">edit</a></td>
											<td><a href="../externalDatasetsSupportLinks/delete.jsp?ID=<strapi:externalDatasetsSupportLinksID />">delete</a></td>
										</tr>
									</strapi:externalDatasetsSupportLinks>
								</strapi:foreachExternalDatasetsSupportLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../externalDatasetsSupportLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ExternalDatasetsSupportLinks</a>
						<br/><br/>

		<strapi:foreachExternalDatasetsSupportLinks var="idIter">
			<strapi:externalDatasetsSupportLinks>
						<a href="../../strapi/externalDatasetsSupportLinks/externalDatasetsSupportLinks.jsp?ID=<strapi:externalDatasetsSupportLinksID />"><strapi:externalDatasetsSupportLinksID /></a>
		<strapi:externalDatasetsSupportLinksExternalDatasetId />
		<strapi:externalDatasetsSupportLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:externalDatasetsSupportLinks>
			</strapi:foreachExternalDatasetsSupportLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>