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
<strapi:externalDatasets ID="${ID}">
	<h2>ExternalDatasets: <strapi:externalDatasetsID /></h2>
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
				<td><a href="edit.jsp?ID=<strapi:externalDatasetsID />"><strapi:externalDatasetsID /></a></td>
				<td><strapi:externalDatasetsHeader /></td>
				<td><strapi:externalDatasetsBlock1 /></td>
				<td><strapi:externalDatasetsCreatedAt /></td>
				<td><strapi:externalDatasetsUpdatedAt /></td>
				<td><strapi:externalDatasetsPublishedAt /></td>
				<td><strapi:externalDatasetsCreatedById /></td>
				<td><strapi:externalDatasetsUpdatedById /></td>
			</tr>
		</table>

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
</strapi:externalDatasets>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>