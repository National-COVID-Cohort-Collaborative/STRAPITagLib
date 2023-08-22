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
<strapi:forums ID="${ID}">
	<h2>Forums: <strapi:forumsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Header2</th>
			<th>Block1</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:forumsID />"><strapi:forumsID /></a></td>
				<td><strapi:forumsHeader /></td>
				<td><strapi:forumsHeader2 /></td>
				<td><strapi:forumsBlock1 /></td>
				<td><strapi:forumsCreatedAt /></td>
				<td><strapi:forumsUpdatedAt /></td>
				<td><strapi:forumsPublishedAt /></td>
				<td><strapi:forumsCreatedById /></td>
				<td><strapi:forumsUpdatedById /></td>
			</tr>
		</table>

						<h2>ForumsForumPresentationsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ForumId</th>
									<th>ForumPresentationId</th>
									<th>ForumPresentationOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachForumsForumPresentationsLinks var="idIter">
									<strapi:forumsForumPresentationsLinks>
										<tr>
											<td><a href="../forumsForumPresentationsLinks/show.jsp?ID=<strapi:forumsForumPresentationsLinksID />"><strapi:forumsForumPresentationsLinksID /></a></td>
											<td><strapi:forumsForumPresentationsLinksForumId /></td>
											<td><strapi:forumsForumPresentationsLinksForumPresentationId /></td>
											<td><strapi:forumsForumPresentationsLinksForumPresentationOrder /></td>
											<td><a href="../forumsForumPresentationsLinks/edit.jsp?ID=<strapi:forumsForumPresentationsLinksID />">edit</a></td>
											<td><a href="../forumsForumPresentationsLinks/delete.jsp?ID=<strapi:forumsForumPresentationsLinksID />">delete</a></td>
										</tr>
									</strapi:forumsForumPresentationsLinks>
								</strapi:foreachForumsForumPresentationsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../forumsForumPresentationsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ForumsForumPresentationsLinks</a>
						<br/><br/>

		<strapi:foreachForumsForumPresentationsLinks var="idIter">
			<strapi:forumsForumPresentationsLinks>
						<a href="../../strapi/forumsForumPresentationsLinks/forumsForumPresentationsLinks.jsp?ID=<strapi:forumsForumPresentationsLinksID />"><strapi:forumsForumPresentationsLinksID /></a>
		<strapi:forumsForumPresentationsLinksForumId />
		<strapi:forumsForumPresentationsLinksForumPresentationId />
		<strapi:forumsForumPresentationsLinksForumPresentationOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:forumsForumPresentationsLinks>
			</strapi:foreachForumsForumPresentationsLinks>
</strapi:forums>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>