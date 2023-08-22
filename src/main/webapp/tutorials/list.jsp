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

						<h2>Tutorials List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Block</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTutorials var="idIter">
									<strapi:tutorials>
										<tr>
											<td><a href="../tutorials/show.jsp?ID=<strapi:tutorialsID />"><strapi:tutorialsID /></a></td>
											<td><strapi:tutorialsHeader /></td>
											<td><strapi:tutorialsBlock /></td>
											<td><strapi:tutorialsCreatedAt /></td>
											<td><strapi:tutorialsUpdatedAt /></td>
											<td><strapi:tutorialsPublishedAt /></td>
											<td><strapi:tutorialsCreatedById /></td>
											<td><strapi:tutorialsUpdatedById /></td>
											<td><a href="../tutorials/edit.jsp?ID=<strapi:tutorialsID />">edit</a></td>
											<td><a href="../tutorials/delete.jsp?ID=<strapi:tutorialsID />">delete</a></td>
										</tr>
									</strapi:tutorials>
								</strapi:foreachTutorials>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tutorials/add.jsp">add Tutorials</a>
						<br/><br/>

		<strapi:foreachTutorials var="idIter">
			<strapi:tutorials>
						<a href="../../strapi/tutorials/tutorials.jsp?ID=<strapi:tutorialsID />"><strapi:tutorialsID /></a>
		<strapi:tutorialsHeader />
		<strapi:tutorialsBlock />
		<strapi:tutorialsCreatedAt />
		<strapi:tutorialsUpdatedAt />
		<strapi:tutorialsPublishedAt />
		<strapi:tutorialsCreatedById />
		<strapi:tutorialsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tutorials>
			</strapi:foreachTutorials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>