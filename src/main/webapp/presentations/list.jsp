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

						<h2>Presentations List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPresentations var="idIter">
									<strapi:presentations>
										<tr>
											<td><a href="../presentations/show.jsp?ID=<strapi:presentationsID />"><strapi:presentationsID /></a></td>
											<td><strapi:presentationsCreatedAt /></td>
											<td><strapi:presentationsUpdatedAt /></td>
											<td><strapi:presentationsPublishedAt /></td>
											<td><strapi:presentationsCreatedById /></td>
											<td><strapi:presentationsUpdatedById /></td>
											<td><a href="../presentations/edit.jsp?ID=<strapi:presentationsID />">edit</a></td>
											<td><a href="../presentations/delete.jsp?ID=<strapi:presentationsID />">delete</a></td>
										</tr>
									</strapi:presentations>
								</strapi:foreachPresentations>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../presentations/add.jsp">add Presentations</a>
						<br/><br/>

		<strapi:foreachPresentations var="idIter">
			<strapi:presentations>
						<a href="../../strapi/presentations/presentations.jsp?ID=<strapi:presentationsID />"><strapi:presentationsID /></a>
		<strapi:presentationsCreatedAt />
		<strapi:presentationsUpdatedAt />
		<strapi:presentationsPublishedAt />
		<strapi:presentationsCreatedById />
		<strapi:presentationsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:presentations>
			</strapi:foreachPresentations>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>