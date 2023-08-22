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

						<h2>PresentationsYouTubeVideosLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PresentationId</th>
									<th>YouTubeVideoId</th>
									<th>YouTubeVideoOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPresentationsYouTubeVideosLinks var="idIter">
									<strapi:presentationsYouTubeVideosLinks>
										<tr>
											<td><a href="../presentationsYouTubeVideosLinks/show.jsp?ID=<strapi:presentationsYouTubeVideosLinksID />"><strapi:presentationsYouTubeVideosLinksID /></a></td>
											<td><strapi:presentationsYouTubeVideosLinksPresentationId /></td>
											<td><strapi:presentationsYouTubeVideosLinksYouTubeVideoId /></td>
											<td><strapi:presentationsYouTubeVideosLinksYouTubeVideoOrder /></td>
											<td><a href="../presentationsYouTubeVideosLinks/edit.jsp?ID=<strapi:presentationsYouTubeVideosLinksID />">edit</a></td>
											<td><a href="../presentationsYouTubeVideosLinks/delete.jsp?ID=<strapi:presentationsYouTubeVideosLinksID />">delete</a></td>
										</tr>
									</strapi:presentationsYouTubeVideosLinks>
								</strapi:foreachPresentationsYouTubeVideosLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../presentationsYouTubeVideosLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PresentationsYouTubeVideosLinks</a>
						<br/><br/>

		<strapi:foreachPresentationsYouTubeVideosLinks var="idIter">
			<strapi:presentationsYouTubeVideosLinks>
						<a href="../../strapi/presentationsYouTubeVideosLinks/presentationsYouTubeVideosLinks.jsp?ID=<strapi:presentationsYouTubeVideosLinksID />"><strapi:presentationsYouTubeVideosLinksID /></a>
		<strapi:presentationsYouTubeVideosLinksPresentationId />
		<strapi:presentationsYouTubeVideosLinksYouTubeVideoId />
		<strapi:presentationsYouTubeVideosLinksYouTubeVideoOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:presentationsYouTubeVideosLinks>
			</strapi:foreachPresentationsYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>