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
<strapi:presentationsYouTubeVideosLinks ID="${ID}">
	<h2>PresentationsYouTubeVideosLinks: <strapi:presentationsYouTubeVideosLinksID /></h2>
<ul>
	<li><a href="../presentations/show.jsp?ID=<strapi:presentationsYouTubeVideosLinksPresentationId />">Presentations</a>
	<li><a href="../youTubeVideos/show.jsp?ID=<strapi:presentationsYouTubeVideosLinksYouTubeVideoId />">YouTubeVideos</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PresentationId</th>
			<th>YouTubeVideoId</th>
			<th>YouTubeVideoOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:presentationsYouTubeVideosLinksID />"><strapi:presentationsYouTubeVideosLinksID /></a></td>
				<td><strapi:presentationsYouTubeVideosLinksPresentationId /></td>
				<td><strapi:presentationsYouTubeVideosLinksYouTubeVideoId /></td>
				<td><strapi:presentationsYouTubeVideosLinksYouTubeVideoOrder /></td>
			</tr>
		</table>
</strapi:presentationsYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>