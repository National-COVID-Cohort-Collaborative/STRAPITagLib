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
<strapi:domainTeamsYouTubeVideosLinks ID="${ID}">
	<h2>DomainTeamsYouTubeVideosLinks: <strapi:domainTeamsYouTubeVideosLinksID /></h2>
<ul>
	<li><a href="../domainTeams/show.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksDomainTeamId />">DomainTeams</a>
	<li><a href="../youTubeVideos/show.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId />">YouTubeVideos</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>DomainTeamId</th>
			<th>YouTubeVideoId</th>
			<th>YouTubeVideoOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:domainTeamsYouTubeVideosLinksID />"><strapi:domainTeamsYouTubeVideosLinksID /></a></td>
				<td><strapi:domainTeamsYouTubeVideosLinksDomainTeamId /></td>
				<td><strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId /></td>
				<td><strapi:domainTeamsYouTubeVideosLinksYouTubeVideoOrder /></td>
			</tr>
		</table>
</strapi:domainTeamsYouTubeVideosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>