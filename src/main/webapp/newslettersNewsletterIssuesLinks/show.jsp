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
<strapi:newslettersNewsletterIssuesLinks ID="${ID}">
	<h2>NewslettersNewsletterIssuesLinks: <strapi:newslettersNewsletterIssuesLinksID /></h2>
<ul>
	<li><a href="../newsletterIssues/show.jsp?ID=<strapi:newslettersNewsletterIssuesLinksNewsletterIssueId />">NewsletterIssues</a>
	<li><a href="../newsletters/show.jsp?ID=<strapi:newslettersNewsletterIssuesLinksNewsletterId />">Newsletters</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>NewsletterId</th>
			<th>NewsletterIssueId</th>
			<th>NewsletterIssueOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:newslettersNewsletterIssuesLinksID />"><strapi:newslettersNewsletterIssuesLinksID /></a></td>
				<td><strapi:newslettersNewsletterIssuesLinksNewsletterId /></td>
				<td><strapi:newslettersNewsletterIssuesLinksNewsletterIssueId /></td>
				<td><strapi:newslettersNewsletterIssuesLinksNewsletterIssueOrder /></td>
			</tr>
		</table>
</strapi:newslettersNewsletterIssuesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>