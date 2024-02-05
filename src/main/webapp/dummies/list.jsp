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

						<h2>Dummies List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>A</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDummies var="idIter">
									<strapi:dummies>
										<tr>
											<td><a href="../dummies/show.jsp?ID=<strapi:dummiesID />"><strapi:dummiesID /></a></td>
											<td><strapi:dummiesA /></td>
											<td><strapi:dummiesCreatedAt /></td>
											<td><strapi:dummiesUpdatedAt /></td>
											<td><strapi:dummiesPublishedAt /></td>
											<td><strapi:dummiesCreatedById /></td>
											<td><strapi:dummiesUpdatedById /></td>
											<td><a href="../dummies/edit.jsp?ID=<strapi:dummiesID />">edit</a></td>
											<td><a href="../dummies/delete.jsp?ID=<strapi:dummiesID />">delete</a></td>
										</tr>
									</strapi:dummies>
								</strapi:foreachDummies>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../dummies/add.jsp">add Dummies</a>
						<br/><br/>

		<strapi:foreachDummies var="idIter">
			<strapi:dummies>
						<a href="../../strapi/dummies/dummies.jsp?ID=<strapi:dummiesID />"><strapi:dummiesID /></a>
		<strapi:dummiesA />
		<strapi:dummiesCreatedAt />
		<strapi:dummiesUpdatedAt />
		<strapi:dummiesPublishedAt />
		<strapi:dummiesCreatedById />
		<strapi:dummiesUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:dummies>
			</strapi:foreachDummies>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>