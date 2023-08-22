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
<strapi:forumsForumPresentationsLinks ID="${ID}">
	<h2>ForumsForumPresentationsLinks: <strapi:forumsForumPresentationsLinksID /></h2>
<ul>
	<li><a href="../forumPresentations/show.jsp?ID=<strapi:forumsForumPresentationsLinksForumPresentationId />">ForumPresentations</a>
	<li><a href="../forums/show.jsp?ID=<strapi:forumsForumPresentationsLinksForumId />">Forums</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ForumId</th>
			<th>ForumPresentationId</th>
			<th>ForumPresentationOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:forumsForumPresentationsLinksID />"><strapi:forumsForumPresentationsLinksID /></a></td>
				<td><strapi:forumsForumPresentationsLinksForumId /></td>
				<td><strapi:forumsForumPresentationsLinksForumPresentationId /></td>
				<td><strapi:forumsForumPresentationsLinksForumPresentationOrder /></td>
			</tr>
		</table>
</strapi:forumsForumPresentationsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>