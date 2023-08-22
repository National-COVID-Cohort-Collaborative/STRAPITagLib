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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>