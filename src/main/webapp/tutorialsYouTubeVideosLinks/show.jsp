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
<strapi:tutorialsYouTubeVideosLinks ID="${ID}">
	<h2>TutorialsYouTubeVideosLinks: <strapi:tutorialsYouTubeVideosLinksID /></h2>
<ul>
	<li><a href="../tutorials/show.jsp?ID=<strapi:tutorialsYouTubeVideosLinksTutorialId />">Tutorials</a>
	<li><a href="../youTubeVideos/show.jsp?ID=<strapi:tutorialsYouTubeVideosLinksYouTubeVideoId />">YouTubeVideos</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TutorialId</th>
			<th>YouTubeVideoId</th>
			<th>YouTubeVideoOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tutorialsYouTubeVideosLinksID />"><strapi:tutorialsYouTubeVideosLinksID /></a></td>
				<td><strapi:tutorialsYouTubeVideosLinksTutorialId /></td>
				<td><strapi:tutorialsYouTubeVideosLinksYouTubeVideoId /></td>
				<td><strapi:tutorialsYouTubeVideosLinksYouTubeVideoOrder /></td>
			</tr>
		</table>
</strapi:tutorialsYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>