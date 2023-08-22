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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>