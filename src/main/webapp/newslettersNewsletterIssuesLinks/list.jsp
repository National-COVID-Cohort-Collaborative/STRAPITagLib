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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>