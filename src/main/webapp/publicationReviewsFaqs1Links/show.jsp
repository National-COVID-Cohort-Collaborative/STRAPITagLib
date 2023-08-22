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
<strapi:publicationReviewsFaqs1Links ID="${ID}">
	<h2>PublicationReviewsFaqs1Links: <strapi:publicationReviewsFaqs1LinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:publicationReviewsFaqs1LinksFaqId />">Faqs</a>
	<li><a href="../publicationReviews/show.jsp?ID=<strapi:publicationReviewsFaqs1LinksPublicationReviewId />">PublicationReviews</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PublicationReviewId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />"><strapi:publicationReviewsFaqs1LinksID /></a></td>
				<td><strapi:publicationReviewsFaqs1LinksPublicationReviewId /></td>
				<td><strapi:publicationReviewsFaqs1LinksFaqId /></td>
				<td><strapi:publicationReviewsFaqs1LinksFaqOrder /></td>
			</tr>
		</table>
</strapi:publicationReviewsFaqs1Links>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>