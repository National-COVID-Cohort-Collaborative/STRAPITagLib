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

						<h2>Resources List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Description</th>
									<th>Url</th>
									<th>UrlLabel</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResources var="idIter">
									<strapi:resources>
										<tr>
											<td><a href="../resources/show.jsp?ID=<strapi:resourcesID />"><strapi:resourcesID /></a></td>
											<td><strapi:resourcesHeader /></td>
											<td><strapi:resourcesDescription /></td>
											<td><strapi:resourcesUrl /></td>
											<td><strapi:resourcesUrlLabel /></td>
											<td><strapi:resourcesCreatedAt /></td>
											<td><strapi:resourcesUpdatedAt /></td>
											<td><strapi:resourcesPublishedAt /></td>
											<td><strapi:resourcesCreatedById /></td>
											<td><strapi:resourcesUpdatedById /></td>
											<td><a href="../resources/edit.jsp?ID=<strapi:resourcesID />">edit</a></td>
											<td><a href="../resources/delete.jsp?ID=<strapi:resourcesID />">delete</a></td>
										</tr>
									</strapi:resources>
								</strapi:foreachResources>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../resources/add.jsp">add Resources</a>
						<br/><br/>

		<strapi:foreachResources var="idIter">
			<strapi:resources>
						<a href="../../strapi/resources/resources.jsp?ID=<strapi:resourcesID />"><strapi:resourcesID /></a>
		<strapi:resourcesHeader />
		<strapi:resourcesDescription />
		<strapi:resourcesUrl />
		<strapi:resourcesUrlLabel />
		<strapi:resourcesCreatedAt />
		<strapi:resourcesUpdatedAt />
		<strapi:resourcesPublishedAt />
		<strapi:resourcesCreatedById />
		<strapi:resourcesUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:resources>
			</strapi:foreachResources>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>