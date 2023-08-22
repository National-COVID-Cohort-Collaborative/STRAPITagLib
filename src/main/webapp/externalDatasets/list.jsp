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

						<h2>ExternalDatasets List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
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
								<strapi:foreachExternalDatasets var="idIter">
									<strapi:externalDatasets>
										<tr>
											<td><a href="../externalDatasets/show.jsp?ID=<strapi:externalDatasetsID />"><strapi:externalDatasetsID /></a></td>
											<td><strapi:externalDatasetsHeader /></td>
											<td><strapi:externalDatasetsBlock1 /></td>
											<td><strapi:externalDatasetsCreatedAt /></td>
											<td><strapi:externalDatasetsUpdatedAt /></td>
											<td><strapi:externalDatasetsPublishedAt /></td>
											<td><strapi:externalDatasetsCreatedById /></td>
											<td><strapi:externalDatasetsUpdatedById /></td>
											<td><a href="../externalDatasets/edit.jsp?ID=<strapi:externalDatasetsID />">edit</a></td>
											<td><a href="../externalDatasets/delete.jsp?ID=<strapi:externalDatasetsID />">delete</a></td>
										</tr>
									</strapi:externalDatasets>
								</strapi:foreachExternalDatasets>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../externalDatasets/add.jsp">add ExternalDatasets</a>
						<br/><br/>

		<strapi:foreachExternalDatasets var="idIter">
			<strapi:externalDatasets>
						<a href="../../strapi/externalDatasets/externalDatasets.jsp?ID=<strapi:externalDatasetsID />"><strapi:externalDatasetsID /></a>
		<strapi:externalDatasetsHeader />
		<strapi:externalDatasetsBlock1 />
		<strapi:externalDatasetsCreatedAt />
		<strapi:externalDatasetsUpdatedAt />
		<strapi:externalDatasetsPublishedAt />
		<strapi:externalDatasetsCreatedById />
		<strapi:externalDatasetsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:externalDatasets>
			</strapi:foreachExternalDatasets>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>