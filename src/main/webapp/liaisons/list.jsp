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

						<h2>Liaisons List</h2>
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
								<strapi:foreachLiaisons var="idIter">
									<strapi:liaisons>
										<tr>
											<td><a href="../liaisons/show.jsp?ID=<strapi:liaisonsID />"><strapi:liaisonsID /></a></td>
											<td><strapi:liaisonsHeader /></td>
											<td><strapi:liaisonsBlock /></td>
											<td><strapi:liaisonsCreatedAt /></td>
											<td><strapi:liaisonsUpdatedAt /></td>
											<td><strapi:liaisonsPublishedAt /></td>
											<td><strapi:liaisonsCreatedById /></td>
											<td><strapi:liaisonsUpdatedById /></td>
											<td><a href="../liaisons/edit.jsp?ID=<strapi:liaisonsID />">edit</a></td>
											<td><a href="../liaisons/delete.jsp?ID=<strapi:liaisonsID />">delete</a></td>
										</tr>
									</strapi:liaisons>
								</strapi:foreachLiaisons>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../liaisons/add.jsp">add Liaisons</a>
						<br/><br/>

		<strapi:foreachLiaisons var="idIter">
			<strapi:liaisons>
						<a href="../../strapi/liaisons/liaisons.jsp?ID=<strapi:liaisonsID />"><strapi:liaisonsID /></a>
		<strapi:liaisonsHeader />
		<strapi:liaisonsBlock />
		<strapi:liaisonsCreatedAt />
		<strapi:liaisonsUpdatedAt />
		<strapi:liaisonsPublishedAt />
		<strapi:liaisonsCreatedById />
		<strapi:liaisonsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:liaisons>
			</strapi:foreachLiaisons>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>