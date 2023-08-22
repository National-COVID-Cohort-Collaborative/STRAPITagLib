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
<strapi:externalDatasetsYouTubeVideoLinks ID="${ID}">
	<h2>ExternalDatasetsYouTubeVideoLinks: <strapi:externalDatasetsYouTubeVideoLinksID /></h2>
<ul>
	<li><a href="../externalDatasets/show.jsp?ID=<strapi:externalDatasetsYouTubeVideoLinksExternalDatasetId />">ExternalDatasets</a>
	<li><a href="../youTubeVideos/show.jsp?ID=<strapi:externalDatasetsYouTubeVideoLinksYouTubeVideoId />">YouTubeVideos</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ExternalDatasetId</th>
			<th>YouTubeVideoId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:externalDatasetsYouTubeVideoLinksID />"><strapi:externalDatasetsYouTubeVideoLinksID /></a></td>
				<td><strapi:externalDatasetsYouTubeVideoLinksExternalDatasetId /></td>
				<td><strapi:externalDatasetsYouTubeVideoLinksYouTubeVideoId /></td>
			</tr>
		</table>
</strapi:externalDatasetsYouTubeVideoLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>