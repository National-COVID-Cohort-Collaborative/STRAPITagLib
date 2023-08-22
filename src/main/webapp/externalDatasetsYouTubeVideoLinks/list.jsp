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

						<h2>ExternalDatasetsYouTubeVideoLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ExternalDatasetId</th>
									<th>YouTubeVideoId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachExternalDatasetsYouTubeVideoLinks var="idIter">
									<strapi:externalDatasetsYouTubeVideoLinks>
										<tr>
											<td><a href="../externalDatasetsYouTubeVideoLinks/show.jsp?ID=<strapi:externalDatasetsYouTubeVideoLinksID />"><strapi:externalDatasetsYouTubeVideoLinksID /></a></td>
											<td><strapi:externalDatasetsYouTubeVideoLinksExternalDatasetId /></td>
											<td><strapi:externalDatasetsYouTubeVideoLinksYouTubeVideoId /></td>
											<td><a href="../externalDatasetsYouTubeVideoLinks/edit.jsp?ID=<strapi:externalDatasetsYouTubeVideoLinksID />">edit</a></td>
											<td><a href="../externalDatasetsYouTubeVideoLinks/delete.jsp?ID=<strapi:externalDatasetsYouTubeVideoLinksID />">delete</a></td>
										</tr>
									</strapi:externalDatasetsYouTubeVideoLinks>
								</strapi:foreachExternalDatasetsYouTubeVideoLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../externalDatasetsYouTubeVideoLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ExternalDatasetsYouTubeVideoLinks</a>
						<br/><br/>

		<strapi:foreachExternalDatasetsYouTubeVideoLinks var="idIter">
			<strapi:externalDatasetsYouTubeVideoLinks>
						<a href="../../strapi/externalDatasetsYouTubeVideoLinks/externalDatasetsYouTubeVideoLinks.jsp?ID=<strapi:externalDatasetsYouTubeVideoLinksID />"><strapi:externalDatasetsYouTubeVideoLinksID /></a>
		<strapi:externalDatasetsYouTubeVideoLinksExternalDatasetId />
		<strapi:externalDatasetsYouTubeVideoLinksYouTubeVideoId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:externalDatasetsYouTubeVideoLinks>
			</strapi:foreachExternalDatasetsYouTubeVideoLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>