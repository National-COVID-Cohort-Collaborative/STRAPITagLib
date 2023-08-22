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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>