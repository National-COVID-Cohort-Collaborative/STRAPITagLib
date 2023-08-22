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

						<h2>ExternalDatasetsDescriptionLinks List</h2>
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
								<strapi:foreachExternalDatasetsDescriptionLinks var="idIter">
									<strapi:externalDatasetsDescriptionLinks>
										<tr>
											<td><a href="../externalDatasetsDescriptionLinks/show.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />"><strapi:externalDatasetsDescriptionLinksID /></a></td>
											<td><strapi:externalDatasetsDescriptionLinksExternalDatasetId /></td>
											<td><strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId /></td>
											<td><a href="../externalDatasetsDescriptionLinks/edit.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />">edit</a></td>
											<td><a href="../externalDatasetsDescriptionLinks/delete.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />">delete</a></td>
										</tr>
									</strapi:externalDatasetsDescriptionLinks>
								</strapi:foreachExternalDatasetsDescriptionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../externalDatasetsDescriptionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ExternalDatasetsDescriptionLinks</a>
						<br/><br/>

		<strapi:foreachExternalDatasetsDescriptionLinks var="idIter">
			<strapi:externalDatasetsDescriptionLinks>
						<a href="../../strapi/externalDatasetsDescriptionLinks/externalDatasetsDescriptionLinks.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />"><strapi:externalDatasetsDescriptionLinksID /></a>
		<strapi:externalDatasetsDescriptionLinksExternalDatasetId />
		<strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:externalDatasetsDescriptionLinks>
			</strapi:foreachExternalDatasetsDescriptionLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>