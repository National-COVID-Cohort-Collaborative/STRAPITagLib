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

						<h2>YouTubeVideos List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Url</th>
									<th>Width</th>
									<th>Height</th>
									<th>Footer</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachYouTubeVideos var="idIter">
									<strapi:youTubeVideos>
										<tr>
											<td><a href="../youTubeVideos/show.jsp?ID=<strapi:youTubeVideosID />"><strapi:youTubeVideosID /></a></td>
											<td><strapi:youTubeVideosHeader /></td>
											<td><strapi:youTubeVideosUrl /></td>
											<td><strapi:youTubeVideosWidth /></td>
											<td><strapi:youTubeVideosHeight /></td>
											<td><strapi:youTubeVideosFooter /></td>
											<td><strapi:youTubeVideosCreatedAt /></td>
											<td><strapi:youTubeVideosUpdatedAt /></td>
											<td><strapi:youTubeVideosPublishedAt /></td>
											<td><strapi:youTubeVideosCreatedById /></td>
											<td><strapi:youTubeVideosUpdatedById /></td>
											<td><a href="../youTubeVideos/edit.jsp?ID=<strapi:youTubeVideosID />">edit</a></td>
											<td><a href="../youTubeVideos/delete.jsp?ID=<strapi:youTubeVideosID />">delete</a></td>
										</tr>
									</strapi:youTubeVideos>
								</strapi:foreachYouTubeVideos>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../youTubeVideos/add.jsp">add YouTubeVideos</a>
						<br/><br/>

		<strapi:foreachYouTubeVideos var="idIter">
			<strapi:youTubeVideos>
						<a href="../../strapi/youTubeVideos/youTubeVideos.jsp?ID=<strapi:youTubeVideosID />"><strapi:youTubeVideosID /></a>
		<strapi:youTubeVideosHeader />
		<strapi:youTubeVideosUrl />
		<strapi:youTubeVideosWidth />
		<strapi:youTubeVideosHeight />
		<strapi:youTubeVideosFooter />
		<strapi:youTubeVideosCreatedAt />
		<strapi:youTubeVideosUpdatedAt />
		<strapi:youTubeVideosPublishedAt />
		<strapi:youTubeVideosCreatedById />
		<strapi:youTubeVideosUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:youTubeVideos>
			</strapi:foreachYouTubeVideos>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>