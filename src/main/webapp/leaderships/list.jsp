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

						<h2>Leaderships List</h2>
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
								<strapi:foreachLeaderships var="idIter">
									<strapi:leaderships>
										<tr>
											<td><a href="../leaderships/show.jsp?ID=<strapi:leadershipsID />"><strapi:leadershipsID /></a></td>
											<td><strapi:leadershipsCreatedAt /></td>
											<td><strapi:leadershipsUpdatedAt /></td>
											<td><strapi:leadershipsPublishedAt /></td>
											<td><strapi:leadershipsCreatedById /></td>
											<td><strapi:leadershipsUpdatedById /></td>
											<td><a href="../leaderships/edit.jsp?ID=<strapi:leadershipsID />">edit</a></td>
											<td><a href="../leaderships/delete.jsp?ID=<strapi:leadershipsID />">delete</a></td>
										</tr>
									</strapi:leaderships>
								</strapi:foreachLeaderships>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../leaderships/add.jsp">add Leaderships</a>
						<br/><br/>

		<strapi:foreachLeaderships var="idIter">
			<strapi:leaderships>
						<a href="../../strapi/leaderships/leaderships.jsp?ID=<strapi:leadershipsID />"><strapi:leadershipsID /></a>
		<strapi:leadershipsCreatedAt />
		<strapi:leadershipsUpdatedAt />
		<strapi:leadershipsPublishedAt />
		<strapi:leadershipsCreatedById />
		<strapi:leadershipsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:leaderships>
			</strapi:foreachLeaderships>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>