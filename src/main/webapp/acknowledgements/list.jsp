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

						<h2>Acknowledgements List</h2>
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
								<strapi:foreachAcknowledgements var="idIter">
									<strapi:acknowledgements>
										<tr>
											<td><a href="../acknowledgements/show.jsp?ID=<strapi:acknowledgementsID />"><strapi:acknowledgementsID /></a></td>
											<td><strapi:acknowledgementsHeader /></td>
											<td><strapi:acknowledgementsBlock /></td>
											<td><strapi:acknowledgementsCreatedAt /></td>
											<td><strapi:acknowledgementsUpdatedAt /></td>
											<td><strapi:acknowledgementsPublishedAt /></td>
											<td><strapi:acknowledgementsCreatedById /></td>
											<td><strapi:acknowledgementsUpdatedById /></td>
											<td><a href="../acknowledgements/edit.jsp?ID=<strapi:acknowledgementsID />">edit</a></td>
											<td><a href="../acknowledgements/delete.jsp?ID=<strapi:acknowledgementsID />">delete</a></td>
										</tr>
									</strapi:acknowledgements>
								</strapi:foreachAcknowledgements>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../acknowledgements/add.jsp">add Acknowledgements</a>
						<br/><br/>

		<strapi:foreachAcknowledgements var="idIter">
			<strapi:acknowledgements>
						<a href="../../strapi/acknowledgements/acknowledgements.jsp?ID=<strapi:acknowledgementsID />"><strapi:acknowledgementsID /></a>
		<strapi:acknowledgementsHeader />
		<strapi:acknowledgementsBlock />
		<strapi:acknowledgementsCreatedAt />
		<strapi:acknowledgementsUpdatedAt />
		<strapi:acknowledgementsPublishedAt />
		<strapi:acknowledgementsCreatedById />
		<strapi:acknowledgementsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:acknowledgements>
			</strapi:foreachAcknowledgements>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>