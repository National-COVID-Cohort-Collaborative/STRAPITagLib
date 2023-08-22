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

						<h2>TutorialsYouTubeVideosLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TutorialId</th>
									<th>YouTubeVideoId</th>
									<th>YouTubeVideoOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTutorialsYouTubeVideosLinks var="idIter">
									<strapi:tutorialsYouTubeVideosLinks>
										<tr>
											<td><a href="../tutorialsYouTubeVideosLinks/show.jsp?ID=<strapi:tutorialsYouTubeVideosLinksID />"><strapi:tutorialsYouTubeVideosLinksID /></a></td>
											<td><strapi:tutorialsYouTubeVideosLinksTutorialId /></td>
											<td><strapi:tutorialsYouTubeVideosLinksYouTubeVideoId /></td>
											<td><strapi:tutorialsYouTubeVideosLinksYouTubeVideoOrder /></td>
											<td><a href="../tutorialsYouTubeVideosLinks/edit.jsp?ID=<strapi:tutorialsYouTubeVideosLinksID />">edit</a></td>
											<td><a href="../tutorialsYouTubeVideosLinks/delete.jsp?ID=<strapi:tutorialsYouTubeVideosLinksID />">delete</a></td>
										</tr>
									</strapi:tutorialsYouTubeVideosLinks>
								</strapi:foreachTutorialsYouTubeVideosLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tutorialsYouTubeVideosLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TutorialsYouTubeVideosLinks</a>
						<br/><br/>

		<strapi:foreachTutorialsYouTubeVideosLinks var="idIter">
			<strapi:tutorialsYouTubeVideosLinks>
						<a href="../../strapi/tutorialsYouTubeVideosLinks/tutorialsYouTubeVideosLinks.jsp?ID=<strapi:tutorialsYouTubeVideosLinksID />"><strapi:tutorialsYouTubeVideosLinksID /></a>
		<strapi:tutorialsYouTubeVideosLinksTutorialId />
		<strapi:tutorialsYouTubeVideosLinksYouTubeVideoId />
		<strapi:tutorialsYouTubeVideosLinksYouTubeVideoOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tutorialsYouTubeVideosLinks>
			</strapi:foreachTutorialsYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>