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
<strapi:publicationReviewsIntroBlockLinks ID="${ID}">
	<h2>PublicationReviewsIntroBlockLinks: <strapi:publicationReviewsIntroBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../publicationReviews/show.jsp?ID=<strapi:publicationReviewsIntroBlockLinksPublicationReviewId />">PublicationReviews</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PublicationReviewId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />"><strapi:publicationReviewsIntroBlockLinksID /></a></td>
				<td><strapi:publicationReviewsIntroBlockLinksPublicationReviewId /></td>
				<td><strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:publicationReviewsIntroBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>