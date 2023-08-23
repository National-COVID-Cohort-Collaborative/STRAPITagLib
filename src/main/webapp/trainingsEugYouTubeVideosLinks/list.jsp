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

						<h2>TrainingsEugYouTubeVideosLinks List</h2>
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
								<strapi:foreachTrainingsEugYouTubeVideosLinks var="idIter">
									<strapi:trainingsEugYouTubeVideosLinks>
										<tr>
											<td><a href="../trainingsEugYouTubeVideosLinks/show.jsp?ID=<strapi:trainingsEugYouTubeVideosLinksID />"><strapi:trainingsEugYouTubeVideosLinksID /></a></td>
											<td><strapi:trainingsEugYouTubeVideosLinksTrainingId /></td>
											<td><strapi:trainingsEugYouTubeVideosLinksYouTubeVideoId /></td>
											<td><strapi:trainingsEugYouTubeVideosLinksYouTubeVideoOrder /></td>
											<td><a href="../trainingsEugYouTubeVideosLinks/edit.jsp?ID=<strapi:trainingsEugYouTubeVideosLinksID />">edit</a></td>
											<td><a href="../trainingsEugYouTubeVideosLinks/delete.jsp?ID=<strapi:trainingsEugYouTubeVideosLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsEugYouTubeVideosLinks>
								</strapi:foreachTrainingsEugYouTubeVideosLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsEugYouTubeVideosLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsEugYouTubeVideosLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsEugYouTubeVideosLinks var="idIter">
			<strapi:trainingsEugYouTubeVideosLinks>
						<a href="../../strapi/trainingsEugYouTubeVideosLinks/trainingsEugYouTubeVideosLinks.jsp?ID=<strapi:trainingsEugYouTubeVideosLinksID />"><strapi:trainingsEugYouTubeVideosLinksID /></a>
		<strapi:trainingsEugYouTubeVideosLinksTrainingId />
		<strapi:trainingsEugYouTubeVideosLinksYouTubeVideoId />
		<strapi:trainingsEugYouTubeVideosLinksYouTubeVideoOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsEugYouTubeVideosLinks>
			</strapi:foreachTrainingsEugYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>