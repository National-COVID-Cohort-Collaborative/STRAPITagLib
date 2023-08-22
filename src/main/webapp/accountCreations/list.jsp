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

						<h2>AccountCreations List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Header2</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>BeforeStartingHeader</th>
									<th>BeforeStartingBlock</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAccountCreations var="idIter">
									<strapi:accountCreations>
										<tr>
											<td><a href="../accountCreations/show.jsp?ID=<strapi:accountCreationsID />"><strapi:accountCreationsID /></a></td>
											<td><strapi:accountCreationsHeader /></td>
											<td><strapi:accountCreationsHeader2 /></td>
											<td><strapi:accountCreationsCreatedAt /></td>
											<td><strapi:accountCreationsUpdatedAt /></td>
											<td><strapi:accountCreationsPublishedAt /></td>
											<td><strapi:accountCreationsCreatedById /></td>
											<td><strapi:accountCreationsUpdatedById /></td>
											<td><strapi:accountCreationsBeforeStartingHeader /></td>
											<td><strapi:accountCreationsBeforeStartingBlock /></td>
											<td><a href="../accountCreations/edit.jsp?ID=<strapi:accountCreationsID />">edit</a></td>
											<td><a href="../accountCreations/delete.jsp?ID=<strapi:accountCreationsID />">delete</a></td>
										</tr>
									</strapi:accountCreations>
								</strapi:foreachAccountCreations>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../accountCreations/add.jsp">add AccountCreations</a>
						<br/><br/>

		<strapi:foreachAccountCreations var="idIter">
			<strapi:accountCreations>
						<a href="../../strapi/accountCreations/accountCreations.jsp?ID=<strapi:accountCreationsID />"><strapi:accountCreationsID /></a>
		<strapi:accountCreationsHeader />
		<strapi:accountCreationsHeader2 />
		<strapi:accountCreationsCreatedAt />
		<strapi:accountCreationsUpdatedAt />
		<strapi:accountCreationsPublishedAt />
		<strapi:accountCreationsCreatedById />
		<strapi:accountCreationsUpdatedById />
		<strapi:accountCreationsBeforeStartingHeader />
		<strapi:accountCreationsBeforeStartingBlock />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:accountCreations>
			</strapi:foreachAccountCreations>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>