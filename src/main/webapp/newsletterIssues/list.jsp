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

						<h2>NewsletterIssues List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Issue</th>
									<th>Url</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNewsletterIssues var="idIter">
									<strapi:newsletterIssues>
										<tr>
											<td><a href="../newsletterIssues/show.jsp?ID=<strapi:newsletterIssuesID />"><strapi:newsletterIssuesID /></a></td>
											<td><strapi:newsletterIssuesIssue /></td>
											<td><strapi:newsletterIssuesUrl /></td>
											<td><strapi:newsletterIssuesCreatedAt /></td>
											<td><strapi:newsletterIssuesUpdatedAt /></td>
											<td><strapi:newsletterIssuesPublishedAt /></td>
											<td><strapi:newsletterIssuesCreatedById /></td>
											<td><strapi:newsletterIssuesUpdatedById /></td>
											<td><a href="../newsletterIssues/edit.jsp?ID=<strapi:newsletterIssuesID />">edit</a></td>
											<td><a href="../newsletterIssues/delete.jsp?ID=<strapi:newsletterIssuesID />">delete</a></td>
										</tr>
									</strapi:newsletterIssues>
								</strapi:foreachNewsletterIssues>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../newsletterIssues/add.jsp">add NewsletterIssues</a>
						<br/><br/>

		<strapi:foreachNewsletterIssues var="idIter">
			<strapi:newsletterIssues>
						<a href="../../strapi/newsletterIssues/newsletterIssues.jsp?ID=<strapi:newsletterIssuesID />"><strapi:newsletterIssuesID /></a>
		<strapi:newsletterIssuesIssue />
		<strapi:newsletterIssuesUrl />
		<strapi:newsletterIssuesCreatedAt />
		<strapi:newsletterIssuesUpdatedAt />
		<strapi:newsletterIssuesPublishedAt />
		<strapi:newsletterIssuesCreatedById />
		<strapi:newsletterIssuesUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:newsletterIssues>
			</strapi:foreachNewsletterIssues>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>