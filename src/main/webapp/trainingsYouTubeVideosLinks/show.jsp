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
<strapi:trainingsYouTubeVideosLinks ID="${ID}">
	<h2>TrainingsYouTubeVideosLinks: <strapi:trainingsYouTubeVideosLinksID /></h2>
<ul>
	<li><a href="../trainings/show.jsp?ID=<strapi:trainingsYouTubeVideosLinksTrainingId />">Trainings</a>
	<li><a href="../youTubeVideos/show.jsp?ID=<strapi:trainingsYouTubeVideosLinksYouTubeVideoId />">YouTubeVideos</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TrainingId</th>
			<th>YouTubeVideoId</th>
			<th>YouTubeVideoOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:trainingsYouTubeVideosLinksID />"><strapi:trainingsYouTubeVideosLinksID /></a></td>
				<td><strapi:trainingsYouTubeVideosLinksTrainingId /></td>
				<td><strapi:trainingsYouTubeVideosLinksYouTubeVideoId /></td>
				<td><strapi:trainingsYouTubeVideosLinksYouTubeVideoOrder /></td>
			</tr>
		</table>
</strapi:trainingsYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>