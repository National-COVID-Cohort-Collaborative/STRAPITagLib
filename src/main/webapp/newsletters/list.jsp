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

						<h2>Newsletters List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNewsletters var="idIter">
									<strapi:newsletters>
										<tr>
											<td><a href="../newsletters/show.jsp?ID=<strapi:newslettersID />"><strapi:newslettersID /></a></td>
											<td><strapi:newslettersHeader /></td>
											<td><strapi:newslettersCreatedAt /></td>
											<td><strapi:newslettersUpdatedAt /></td>
											<td><strapi:newslettersPublishedAt /></td>
											<td><strapi:newslettersCreatedById /></td>
											<td><strapi:newslettersUpdatedById /></td>
											<td><a href="../newsletters/edit.jsp?ID=<strapi:newslettersID />">edit</a></td>
											<td><a href="../newsletters/delete.jsp?ID=<strapi:newslettersID />">delete</a></td>
										</tr>
									</strapi:newsletters>
								</strapi:foreachNewsletters>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../newsletters/add.jsp">add Newsletters</a>
						<br/><br/>

		<strapi:foreachNewsletters var="idIter">
			<strapi:newsletters>
						<a href="../../strapi/newsletters/newsletters.jsp?ID=<strapi:newslettersID />"><strapi:newslettersID /></a>
		<strapi:newslettersHeader />
		<strapi:newslettersCreatedAt />
		<strapi:newslettersUpdatedAt />
		<strapi:newslettersPublishedAt />
		<strapi:newslettersCreatedById />
		<strapi:newslettersUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:newsletters>
			</strapi:foreachNewsletters>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>