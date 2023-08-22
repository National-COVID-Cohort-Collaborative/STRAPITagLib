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

						<h2>Supports List</h2>
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
								<strapi:foreachSupports var="idIter">
									<strapi:supports>
										<tr>
											<td><a href="../supports/show.jsp?ID=<strapi:supportsID />"><strapi:supportsID /></a></td>
											<td><strapi:supportsHeader /></td>
											<td><strapi:supportsBlock /></td>
											<td><strapi:supportsCreatedAt /></td>
											<td><strapi:supportsUpdatedAt /></td>
											<td><strapi:supportsPublishedAt /></td>
											<td><strapi:supportsCreatedById /></td>
											<td><strapi:supportsUpdatedById /></td>
											<td><a href="../supports/edit.jsp?ID=<strapi:supportsID />">edit</a></td>
											<td><a href="../supports/delete.jsp?ID=<strapi:supportsID />">delete</a></td>
										</tr>
									</strapi:supports>
								</strapi:foreachSupports>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../supports/add.jsp">add Supports</a>
						<br/><br/>

		<strapi:foreachSupports var="idIter">
			<strapi:supports>
						<a href="../../strapi/supports/supports.jsp?ID=<strapi:supportsID />"><strapi:supportsID /></a>
		<strapi:supportsHeader />
		<strapi:supportsBlock />
		<strapi:supportsCreatedAt />
		<strapi:supportsUpdatedAt />
		<strapi:supportsPublishedAt />
		<strapi:supportsCreatedById />
		<strapi:supportsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:supports>
			</strapi:foreachSupports>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>