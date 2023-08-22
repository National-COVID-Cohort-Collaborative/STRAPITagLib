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

						<h2>ExternalDatasetsIngestionLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ExternalDatasetId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachExternalDatasetsIngestionLinks var="idIter">
									<strapi:externalDatasetsIngestionLinks>
										<tr>
											<td><a href="../externalDatasetsIngestionLinks/show.jsp?ID=<strapi:externalDatasetsIngestionLinksID />"><strapi:externalDatasetsIngestionLinksID /></a></td>
											<td><strapi:externalDatasetsIngestionLinksExternalDatasetId /></td>
											<td><strapi:externalDatasetsIngestionLinksContentImageBlockRightId /></td>
											<td><a href="../externalDatasetsIngestionLinks/edit.jsp?ID=<strapi:externalDatasetsIngestionLinksID />">edit</a></td>
											<td><a href="../externalDatasetsIngestionLinks/delete.jsp?ID=<strapi:externalDatasetsIngestionLinksID />">delete</a></td>
										</tr>
									</strapi:externalDatasetsIngestionLinks>
								</strapi:foreachExternalDatasetsIngestionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../externalDatasetsIngestionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ExternalDatasetsIngestionLinks</a>
						<br/><br/>

		<strapi:foreachExternalDatasetsIngestionLinks var="idIter">
			<strapi:externalDatasetsIngestionLinks>
						<a href="../../strapi/externalDatasetsIngestionLinks/externalDatasetsIngestionLinks.jsp?ID=<strapi:externalDatasetsIngestionLinksID />"><strapi:externalDatasetsIngestionLinksID /></a>
		<strapi:externalDatasetsIngestionLinksExternalDatasetId />
		<strapi:externalDatasetsIngestionLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:externalDatasetsIngestionLinks>
			</strapi:foreachExternalDatasetsIngestionLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>