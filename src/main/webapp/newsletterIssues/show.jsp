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
<strapi:newsletterIssues ID="${ID}">
	<h2>NewsletterIssues: <strapi:newsletterIssuesID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Issue</th>
			<th>Url</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:newsletterIssuesID />"><strapi:newsletterIssuesID /></a></td>
				<td><strapi:newsletterIssuesIssue /></td>
				<td><strapi:newsletterIssuesUrl /></td>
				<td><strapi:newsletterIssuesCreatedAt /></td>
				<td><strapi:newsletterIssuesUpdatedAt /></td>
				<td><strapi:newsletterIssuesPublishedAt /></td>
				<td><strapi:newsletterIssuesCreatedById /></td>
				<td><strapi:newsletterIssuesUpdatedById /></td>
			</tr>
		</table>

						<h2>NewslettersNewsletterIssuesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>NewsletterId</th>
									<th>NewsletterIssueId</th>
									<th>NewsletterIssueOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNewslettersNewsletterIssuesLinks var="idIter">
									<strapi:newslettersNewsletterIssuesLinks>
										<tr>
											<td><a href="../newslettersNewsletterIssuesLinks/show.jsp?ID=<strapi:newslettersNewsletterIssuesLinksID />"><strapi:newslettersNewsletterIssuesLinksID /></a></td>
											<td><strapi:newslettersNewsletterIssuesLinksNewsletterId /></td>
											<td><strapi:newslettersNewsletterIssuesLinksNewsletterIssueId /></td>
											<td><strapi:newslettersNewsletterIssuesLinksNewsletterIssueOrder /></td>
											<td><a href="../newslettersNewsletterIssuesLinks/edit.jsp?ID=<strapi:newslettersNewsletterIssuesLinksID />">edit</a></td>
											<td><a href="../newslettersNewsletterIssuesLinks/delete.jsp?ID=<strapi:newslettersNewsletterIssuesLinksID />">delete</a></td>
										</tr>
									</strapi:newslettersNewsletterIssuesLinks>
								</strapi:foreachNewslettersNewsletterIssuesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../newslettersNewsletterIssuesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add NewslettersNewsletterIssuesLinks</a>
						<br/><br/>

		<strapi:foreachNewslettersNewsletterIssuesLinks var="idIter">
			<strapi:newslettersNewsletterIssuesLinks>
						<a href="../../strapi/newslettersNewsletterIssuesLinks/newslettersNewsletterIssuesLinks.jsp?ID=<strapi:newslettersNewsletterIssuesLinksID />"><strapi:newslettersNewsletterIssuesLinksID /></a>
		<strapi:newslettersNewsletterIssuesLinksNewsletterId />
		<strapi:newslettersNewsletterIssuesLinksNewsletterIssueId />
		<strapi:newslettersNewsletterIssuesLinksNewsletterIssueOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:newslettersNewsletterIssuesLinks>
			</strapi:foreachNewslettersNewsletterIssuesLinks>
</strapi:newsletterIssues>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>