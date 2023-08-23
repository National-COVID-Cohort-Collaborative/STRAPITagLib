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
<strapi:trainingsEugYouTubeVideosLinks ID="${ID}">
	<h2>TrainingsEugYouTubeVideosLinks: <strapi:trainingsEugYouTubeVideosLinksID /></h2>
<ul>
	<li><a href="../trainings/show.jsp?ID=<strapi:trainingsEugYouTubeVideosLinksTrainingId />">Trainings</a>
	<li><a href="../youTubeVideos/show.jsp?ID=<strapi:trainingsEugYouTubeVideosLinksYouTubeVideoId />">YouTubeVideos</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TrainingId</th>
			<th>YouTubeVideoId</th>
			<th>YouTubeVideoOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:trainingsEugYouTubeVideosLinksID />"><strapi:trainingsEugYouTubeVideosLinksID /></a></td>
				<td><strapi:trainingsEugYouTubeVideosLinksTrainingId /></td>
				<td><strapi:trainingsEugYouTubeVideosLinksYouTubeVideoId /></td>
				<td><strapi:trainingsEugYouTubeVideosLinksYouTubeVideoOrder /></td>
			</tr>
		</table>
</strapi:trainingsEugYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>