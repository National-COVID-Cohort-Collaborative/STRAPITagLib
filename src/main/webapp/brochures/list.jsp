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

						<h2>Brochures List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>PdfLinkHeader</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachBrochures var="idIter">
									<strapi:brochures>
										<tr>
											<td><a href="../brochures/show.jsp?ID=<strapi:brochuresID />"><strapi:brochuresID /></a></td>
											<td><strapi:brochuresHeader /></td>
											<td><strapi:brochuresPdfLinkHeader /></td>
											<td><strapi:brochuresCreatedAt /></td>
											<td><strapi:brochuresUpdatedAt /></td>
											<td><strapi:brochuresPublishedAt /></td>
											<td><strapi:brochuresCreatedById /></td>
											<td><strapi:brochuresUpdatedById /></td>
											<td><a href="../brochures/edit.jsp?ID=<strapi:brochuresID />">edit</a></td>
											<td><a href="../brochures/delete.jsp?ID=<strapi:brochuresID />">delete</a></td>
										</tr>
									</strapi:brochures>
								</strapi:foreachBrochures>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../brochures/add.jsp">add Brochures</a>
						<br/><br/>

		<strapi:foreachBrochures var="idIter">
			<strapi:brochures>
						<a href="../../strapi/brochures/brochures.jsp?ID=<strapi:brochuresID />"><strapi:brochuresID /></a>
		<strapi:brochuresHeader />
		<strapi:brochuresPdfLinkHeader />
		<strapi:brochuresCreatedAt />
		<strapi:brochuresUpdatedAt />
		<strapi:brochuresPublishedAt />
		<strapi:brochuresCreatedById />
		<strapi:brochuresUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:brochures>
			</strapi:foreachBrochures>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>