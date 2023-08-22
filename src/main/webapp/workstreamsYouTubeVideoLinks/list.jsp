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

						<h2>WorkstreamsYouTubeVideoLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamId</th>
									<th>YouTubeVideoId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamsYouTubeVideoLinks var="idIter">
									<strapi:workstreamsYouTubeVideoLinks>
										<tr>
											<td><a href="../workstreamsYouTubeVideoLinks/show.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />"><strapi:workstreamsYouTubeVideoLinksID /></a></td>
											<td><strapi:workstreamsYouTubeVideoLinksWorkstreamId /></td>
											<td><strapi:workstreamsYouTubeVideoLinksYouTubeVideoId /></td>
											<td><a href="../workstreamsYouTubeVideoLinks/edit.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />">edit</a></td>
											<td><a href="../workstreamsYouTubeVideoLinks/delete.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamsYouTubeVideoLinks>
								</strapi:foreachWorkstreamsYouTubeVideoLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamsYouTubeVideoLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamsYouTubeVideoLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamsYouTubeVideoLinks var="idIter">
			<strapi:workstreamsYouTubeVideoLinks>
						<a href="../../strapi/workstreamsYouTubeVideoLinks/workstreamsYouTubeVideoLinks.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />"><strapi:workstreamsYouTubeVideoLinksID /></a>
		<strapi:workstreamsYouTubeVideoLinksWorkstreamId />
		<strapi:workstreamsYouTubeVideoLinksYouTubeVideoId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamsYouTubeVideoLinks>
			</strapi:foreachWorkstreamsYouTubeVideoLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>