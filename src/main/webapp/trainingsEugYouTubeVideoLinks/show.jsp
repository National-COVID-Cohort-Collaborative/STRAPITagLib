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
<strapi:trainingsEugYouTubeVideoLinks ID="${ID}">
	<h2>TrainingsEugYouTubeVideoLinks: <strapi:trainingsEugYouTubeVideoLinksID /></h2>
<ul>
	<li><a href="../trainings/show.jsp?ID=<strapi:trainingsEugYouTubeVideoLinksTrainingId />">Trainings</a>
	<li><a href="../youTubeVideos/show.jsp?ID=<strapi:trainingsEugYouTubeVideoLinksYouTubeVideoId />">YouTubeVideos</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TrainingId</th>
			<th>YouTubeVideoId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:trainingsEugYouTubeVideoLinksID />"><strapi:trainingsEugYouTubeVideoLinksID /></a></td>
				<td><strapi:trainingsEugYouTubeVideoLinksTrainingId /></td>
				<td><strapi:trainingsEugYouTubeVideoLinksYouTubeVideoId /></td>
			</tr>
		</table>
</strapi:trainingsEugYouTubeVideoLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>