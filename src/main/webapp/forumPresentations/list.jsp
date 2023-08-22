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

						<h2>ForumPresentations List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Topic</th>
									<th>Presenters</th>
									<th>Date</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachForumPresentations var="idIter">
									<strapi:forumPresentations>
										<tr>
											<td><a href="../forumPresentations/show.jsp?ID=<strapi:forumPresentationsID />"><strapi:forumPresentationsID /></a></td>
											<td><strapi:forumPresentationsTopic /></td>
											<td><strapi:forumPresentationsPresenters /></td>
											<td><strapi:forumPresentationsDate /></td>
											<td><strapi:forumPresentationsCreatedAt /></td>
											<td><strapi:forumPresentationsUpdatedAt /></td>
											<td><strapi:forumPresentationsPublishedAt /></td>
											<td><strapi:forumPresentationsCreatedById /></td>
											<td><strapi:forumPresentationsUpdatedById /></td>
											<td><a href="../forumPresentations/edit.jsp?ID=<strapi:forumPresentationsID />">edit</a></td>
											<td><a href="../forumPresentations/delete.jsp?ID=<strapi:forumPresentationsID />">delete</a></td>
										</tr>
									</strapi:forumPresentations>
								</strapi:foreachForumPresentations>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../forumPresentations/add.jsp">add ForumPresentations</a>
						<br/><br/>

		<strapi:foreachForumPresentations var="idIter">
			<strapi:forumPresentations>
						<a href="../../strapi/forumPresentations/forumPresentations.jsp?ID=<strapi:forumPresentationsID />"><strapi:forumPresentationsID /></a>
		<strapi:forumPresentationsTopic />
		<strapi:forumPresentationsPresenters />
		<strapi:forumPresentationsDate />
		<strapi:forumPresentationsCreatedAt />
		<strapi:forumPresentationsUpdatedAt />
		<strapi:forumPresentationsPublishedAt />
		<strapi:forumPresentationsCreatedById />
		<strapi:forumPresentationsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:forumPresentations>
			</strapi:foreachForumPresentations>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>