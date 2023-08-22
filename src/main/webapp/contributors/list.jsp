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

						<h2>Contributors List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
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
								<strapi:foreachContributors var="idIter">
									<strapi:contributors>
										<tr>
											<td><a href="../contributors/show.jsp?ID=<strapi:contributorsID />"><strapi:contributorsID /></a></td>
											<td><strapi:contributorsBlock1 /></td>
											<td><strapi:contributorsCreatedAt /></td>
											<td><strapi:contributorsUpdatedAt /></td>
											<td><strapi:contributorsPublishedAt /></td>
											<td><strapi:contributorsCreatedById /></td>
											<td><strapi:contributorsUpdatedById /></td>
											<td><a href="../contributors/edit.jsp?ID=<strapi:contributorsID />">edit</a></td>
											<td><a href="../contributors/delete.jsp?ID=<strapi:contributorsID />">delete</a></td>
										</tr>
									</strapi:contributors>
								</strapi:foreachContributors>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../contributors/add.jsp">add Contributors</a>
						<br/><br/>

		<strapi:foreachContributors var="idIter">
			<strapi:contributors>
						<a href="../../strapi/contributors/contributors.jsp?ID=<strapi:contributorsID />"><strapi:contributorsID /></a>
		<strapi:contributorsBlock1 />
		<strapi:contributorsCreatedAt />
		<strapi:contributorsUpdatedAt />
		<strapi:contributorsPublishedAt />
		<strapi:contributorsCreatedById />
		<strapi:contributorsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:contributors>
			</strapi:foreachContributors>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>