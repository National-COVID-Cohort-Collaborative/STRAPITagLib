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
<strapi:publicationReviewsFaqs2Links ID="${ID}">
	<h2>PublicationReviewsFaqs2Links: <strapi:publicationReviewsFaqs2LinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:publicationReviewsFaqs2LinksFaqId />">Faqs</a>
	<li><a href="../publicationReviews/show.jsp?ID=<strapi:publicationReviewsFaqs2LinksPublicationReviewId />">PublicationReviews</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PublicationReviewId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />"><strapi:publicationReviewsFaqs2LinksID /></a></td>
				<td><strapi:publicationReviewsFaqs2LinksPublicationReviewId /></td>
				<td><strapi:publicationReviewsFaqs2LinksFaqId /></td>
				<td><strapi:publicationReviewsFaqs2LinksFaqOrder /></td>
			</tr>
		</table>
</strapi:publicationReviewsFaqs2Links>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>