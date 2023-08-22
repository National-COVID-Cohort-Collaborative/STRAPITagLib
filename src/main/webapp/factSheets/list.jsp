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

						<h2>FactSheets List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Block1</th>
									<th>Block2</th>
									<th>Block3</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFactSheets var="idIter">
									<strapi:factSheets>
										<tr>
											<td><a href="../factSheets/show.jsp?ID=<strapi:factSheetsID />"><strapi:factSheetsID /></a></td>
											<td><strapi:factSheetsHeader /></td>
											<td><strapi:factSheetsBlock1 /></td>
											<td><strapi:factSheetsBlock2 /></td>
											<td><strapi:factSheetsBlock3 /></td>
											<td><strapi:factSheetsCreatedAt /></td>
											<td><strapi:factSheetsUpdatedAt /></td>
											<td><strapi:factSheetsPublishedAt /></td>
											<td><strapi:factSheetsCreatedById /></td>
											<td><strapi:factSheetsUpdatedById /></td>
											<td><a href="../factSheets/edit.jsp?ID=<strapi:factSheetsID />">edit</a></td>
											<td><a href="../factSheets/delete.jsp?ID=<strapi:factSheetsID />">delete</a></td>
										</tr>
									</strapi:factSheets>
								</strapi:foreachFactSheets>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../factSheets/add.jsp">add FactSheets</a>
						<br/><br/>

		<strapi:foreachFactSheets var="idIter">
			<strapi:factSheets>
						<a href="../../strapi/factSheets/factSheets.jsp?ID=<strapi:factSheetsID />"><strapi:factSheetsID /></a>
		<strapi:factSheetsHeader />
		<strapi:factSheetsBlock1 />
		<strapi:factSheetsBlock2 />
		<strapi:factSheetsBlock3 />
		<strapi:factSheetsCreatedAt />
		<strapi:factSheetsUpdatedAt />
		<strapi:factSheetsPublishedAt />
		<strapi:factSheetsCreatedById />
		<strapi:factSheetsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:factSheets>
			</strapi:foreachFactSheets>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>