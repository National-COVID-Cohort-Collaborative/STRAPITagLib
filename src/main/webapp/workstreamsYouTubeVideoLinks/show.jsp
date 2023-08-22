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
<strapi:workstreamsYouTubeVideoLinks ID="${ID}">
	<h2>WorkstreamsYouTubeVideoLinks: <strapi:workstreamsYouTubeVideoLinksID /></h2>
<ul>
	<li><a href="../workstreams/show.jsp?ID=<strapi:workstreamsYouTubeVideoLinksWorkstreamId />">Workstreams</a>
	<li><a href="../youTubeVideos/show.jsp?ID=<strapi:workstreamsYouTubeVideoLinksYouTubeVideoId />">YouTubeVideos</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>WorkstreamId</th>
			<th>YouTubeVideoId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />"><strapi:workstreamsYouTubeVideoLinksID /></a></td>
				<td><strapi:workstreamsYouTubeVideoLinksWorkstreamId /></td>
				<td><strapi:workstreamsYouTubeVideoLinksYouTubeVideoId /></td>
			</tr>
		</table>
</strapi:workstreamsYouTubeVideoLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>