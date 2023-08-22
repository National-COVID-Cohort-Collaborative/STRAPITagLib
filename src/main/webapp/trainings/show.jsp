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
<strapi:trainings ID="${ID}">
	<h2>Trainings: <strapi:trainingsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Block1</th>
			<th>PortalHeader</th>
			<th>PortalBlock</th>
			<th>CommunityHeader</th>
			<th>CommunityBlock</th>
			<th>EugHeader</th>
			<th>EugBlock</th>
			<th>EugBlock2</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>SharedResourceHeader</th>
			<th>SharedResourceBlock</th>
			<th>AdditionalResourcesHeader</th>
			<th>AdditionalResourcesBlock</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:trainingsID />"><strapi:trainingsID /></a></td>
				<td><strapi:trainingsHeader /></td>
				<td><strapi:trainingsBlock1 /></td>
				<td><strapi:trainingsPortalHeader /></td>
				<td><strapi:trainingsPortalBlock /></td>
				<td><strapi:trainingsCommunityHeader /></td>
				<td><strapi:trainingsCommunityBlock /></td>
				<td><strapi:trainingsEugHeader /></td>
				<td><strapi:trainingsEugBlock /></td>
				<td><strapi:trainingsEugBlock2 /></td>
				<td><strapi:trainingsCreatedAt /></td>
				<td><strapi:trainingsUpdatedAt /></td>
				<td><strapi:trainingsPublishedAt /></td>
				<td><strapi:trainingsCreatedById /></td>
				<td><strapi:trainingsUpdatedById /></td>
				<td><strapi:trainingsSharedResourceHeader /></td>
				<td><strapi:trainingsSharedResourceBlock /></td>
				<td><strapi:trainingsAdditionalResourcesHeader /></td>
				<td><strapi:trainingsAdditionalResourcesBlock /></td>
			</tr>
		</table>

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

						<h2>TrainingsEugYouTubeVideoLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TrainingId</th>
									<th>YouTubeVideoId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTrainingsEugYouTubeVideoLinks var="idIter">
									<strapi:trainingsEugYouTubeVideoLinks>
										<tr>
											<td><a href="../trainingsEugYouTubeVideoLinks/show.jsp?ID=<strapi:trainingsEugYouTubeVideoLinksID />"><strapi:trainingsEugYouTubeVideoLinksID /></a></td>
											<td><strapi:trainingsEugYouTubeVideoLinksTrainingId /></td>
											<td><strapi:trainingsEugYouTubeVideoLinksYouTubeVideoId /></td>
											<td><a href="../trainingsEugYouTubeVideoLinks/edit.jsp?ID=<strapi:trainingsEugYouTubeVideoLinksID />">edit</a></td>
											<td><a href="../trainingsEugYouTubeVideoLinks/delete.jsp?ID=<strapi:trainingsEugYouTubeVideoLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsEugYouTubeVideoLinks>
								</strapi:foreachTrainingsEugYouTubeVideoLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsEugYouTubeVideoLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsEugYouTubeVideoLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsEugYouTubeVideoLinks var="idIter">
			<strapi:trainingsEugYouTubeVideoLinks>
						<a href="../../strapi/trainingsEugYouTubeVideoLinks/trainingsEugYouTubeVideoLinks.jsp?ID=<strapi:trainingsEugYouTubeVideoLinksID />"><strapi:trainingsEugYouTubeVideoLinksID /></a>
		<strapi:trainingsEugYouTubeVideoLinksTrainingId />
		<strapi:trainingsEugYouTubeVideoLinksYouTubeVideoId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsEugYouTubeVideoLinks>
			</strapi:foreachTrainingsEugYouTubeVideoLinks>

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

						<h2>TrainingsYouTubeVideosLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TrainingId</th>
									<th>YouTubeVideoId</th>
									<th>YouTubeVideoOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTrainingsYouTubeVideosLinks var="idIter">
									<strapi:trainingsYouTubeVideosLinks>
										<tr>
											<td><a href="../trainingsYouTubeVideosLinks/show.jsp?ID=<strapi:trainingsYouTubeVideosLinksID />"><strapi:trainingsYouTubeVideosLinksID /></a></td>
											<td><strapi:trainingsYouTubeVideosLinksTrainingId /></td>
											<td><strapi:trainingsYouTubeVideosLinksYouTubeVideoId /></td>
											<td><strapi:trainingsYouTubeVideosLinksYouTubeVideoOrder /></td>
											<td><a href="../trainingsYouTubeVideosLinks/edit.jsp?ID=<strapi:trainingsYouTubeVideosLinksID />">edit</a></td>
											<td><a href="../trainingsYouTubeVideosLinks/delete.jsp?ID=<strapi:trainingsYouTubeVideosLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsYouTubeVideosLinks>
								</strapi:foreachTrainingsYouTubeVideosLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsYouTubeVideosLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsYouTubeVideosLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsYouTubeVideosLinks var="idIter">
			<strapi:trainingsYouTubeVideosLinks>
						<a href="../../strapi/trainingsYouTubeVideosLinks/trainingsYouTubeVideosLinks.jsp?ID=<strapi:trainingsYouTubeVideosLinksID />"><strapi:trainingsYouTubeVideosLinksID /></a>
		<strapi:trainingsYouTubeVideosLinksTrainingId />
		<strapi:trainingsYouTubeVideosLinksYouTubeVideoId />
		<strapi:trainingsYouTubeVideosLinksYouTubeVideoOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsYouTubeVideosLinks>
			</strapi:foreachTrainingsYouTubeVideosLinks>
</strapi:trainings>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>