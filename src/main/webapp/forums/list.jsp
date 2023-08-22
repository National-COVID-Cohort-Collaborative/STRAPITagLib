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

						<h2>Forums List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
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
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachForums var="idIter">
									<strapi:forums>
										<tr>
											<td><a href="../forums/show.jsp?ID=<strapi:forumsID />"><strapi:forumsID /></a></td>
											<td><strapi:forumsHeader /></td>
											<td><strapi:forumsHeader2 /></td>
											<td><strapi:forumsBlock1 /></td>
											<td><strapi:forumsCreatedAt /></td>
											<td><strapi:forumsUpdatedAt /></td>
											<td><strapi:forumsPublishedAt /></td>
											<td><strapi:forumsCreatedById /></td>
											<td><strapi:forumsUpdatedById /></td>
											<td><a href="../forums/edit.jsp?ID=<strapi:forumsID />">edit</a></td>
											<td><a href="../forums/delete.jsp?ID=<strapi:forumsID />">delete</a></td>
										</tr>
									</strapi:forums>
								</strapi:foreachForums>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../forums/add.jsp">add Forums</a>
						<br/><br/>

		<strapi:foreachForums var="idIter">
			<strapi:forums>
						<a href="../../strapi/forums/forums.jsp?ID=<strapi:forumsID />"><strapi:forumsID /></a>
		<strapi:forumsHeader />
		<strapi:forumsHeader2 />
		<strapi:forumsBlock1 />
		<strapi:forumsCreatedAt />
		<strapi:forumsUpdatedAt />
		<strapi:forumsPublishedAt />
		<strapi:forumsCreatedById />
		<strapi:forumsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:forums>
			</strapi:foreachForums>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>