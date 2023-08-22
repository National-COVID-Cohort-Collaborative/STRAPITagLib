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

						<h2>NewsItems List</h2>
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
								<strapi:foreachNewsItems var="idIter">
									<strapi:newsItems>
										<tr>
											<td><a href="../newsItems/show.jsp?ID=<strapi:newsItemsID />"><strapi:newsItemsID /></a></td>
											<td><strapi:newsItemsCreatedAt /></td>
											<td><strapi:newsItemsUpdatedAt /></td>
											<td><strapi:newsItemsPublishedAt /></td>
											<td><strapi:newsItemsCreatedById /></td>
											<td><strapi:newsItemsUpdatedById /></td>
											<td><a href="../newsItems/edit.jsp?ID=<strapi:newsItemsID />">edit</a></td>
											<td><a href="../newsItems/delete.jsp?ID=<strapi:newsItemsID />">delete</a></td>
										</tr>
									</strapi:newsItems>
								</strapi:foreachNewsItems>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../newsItems/add.jsp">add NewsItems</a>
						<br/><br/>

		<strapi:foreachNewsItems var="idIter">
			<strapi:newsItems>
						<a href="../../strapi/newsItems/newsItems.jsp?ID=<strapi:newsItemsID />"><strapi:newsItemsID /></a>
		<strapi:newsItemsCreatedAt />
		<strapi:newsItemsUpdatedAt />
		<strapi:newsItemsPublishedAt />
		<strapi:newsItemsCreatedById />
		<strapi:newsItemsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:newsItems>
			</strapi:foreachNewsItems>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>