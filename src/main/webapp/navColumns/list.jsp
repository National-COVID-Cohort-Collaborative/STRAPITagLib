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

						<h2>NavColumns List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Label</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Url</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNavColumns var="idIter">
									<strapi:navColumns>
										<tr>
											<td><a href="../navColumns/show.jsp?ID=<strapi:navColumnsID />"><strapi:navColumnsID /></a></td>
											<td><strapi:navColumnsLabel /></td>
											<td><strapi:navColumnsCreatedAt /></td>
											<td><strapi:navColumnsUpdatedAt /></td>
											<td><strapi:navColumnsPublishedAt /></td>
											<td><strapi:navColumnsCreatedById /></td>
											<td><strapi:navColumnsUpdatedById /></td>
											<td><strapi:navColumnsUrl /></td>
											<td><a href="../navColumns/edit.jsp?ID=<strapi:navColumnsID />">edit</a></td>
											<td><a href="../navColumns/delete.jsp?ID=<strapi:navColumnsID />">delete</a></td>
										</tr>
									</strapi:navColumns>
								</strapi:foreachNavColumns>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../navColumns/add.jsp">add NavColumns</a>
						<br/><br/>

		<strapi:foreachNavColumns var="idIter">
			<strapi:navColumns>
						<a href="../../strapi/navColumns/navColumns.jsp?ID=<strapi:navColumnsID />"><strapi:navColumnsID /></a>
		<strapi:navColumnsLabel />
		<strapi:navColumnsCreatedAt />
		<strapi:navColumnsUpdatedAt />
		<strapi:navColumnsPublishedAt />
		<strapi:navColumnsCreatedById />
		<strapi:navColumnsUpdatedById />
		<strapi:navColumnsUrl />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:navColumns>
			</strapi:foreachNavColumns>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>