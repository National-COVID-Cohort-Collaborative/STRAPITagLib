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

						<h2>DomainTeamsYouTubeVideosLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainTeamId</th>
									<th>YouTubeVideoId</th>
									<th>YouTubeVideoOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainTeamsYouTubeVideosLinks var="idIter">
									<strapi:domainTeamsYouTubeVideosLinks>
										<tr>
											<td><a href="../domainTeamsYouTubeVideosLinks/show.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />"><strapi:domainTeamsYouTubeVideosLinksID /></a></td>
											<td><strapi:domainTeamsYouTubeVideosLinksDomainTeamId /></td>
											<td><strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId /></td>
											<td><strapi:domainTeamsYouTubeVideosLinksYouTubeVideoOrder /></td>
											<td><a href="../domainTeamsYouTubeVideosLinks/edit.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />">edit</a></td>
											<td><a href="../domainTeamsYouTubeVideosLinks/delete.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />">delete</a></td>
										</tr>
									</strapi:domainTeamsYouTubeVideosLinks>
								</strapi:foreachDomainTeamsYouTubeVideosLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainTeamsYouTubeVideosLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainTeamsYouTubeVideosLinks</a>
						<br/><br/>

		<strapi:foreachDomainTeamsYouTubeVideosLinks var="idIter">
			<strapi:domainTeamsYouTubeVideosLinks>
						<a href="../../strapi/domainTeamsYouTubeVideosLinks/domainTeamsYouTubeVideosLinks.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />"><strapi:domainTeamsYouTubeVideosLinksID /></a>
		<strapi:domainTeamsYouTubeVideosLinksDomainTeamId />
		<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId />
		<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainTeamsYouTubeVideosLinks>
			</strapi:foreachDomainTeamsYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>