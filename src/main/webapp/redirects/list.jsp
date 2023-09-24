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

						<h2>Redirects List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Source</th>
									<th>Target</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachRedirects var="idIter">
									<strapi:redirects>
										<tr>
											<td><a href="../redirects/show.jsp?ID=<strapi:redirectsID />"><strapi:redirectsID /></a></td>
											<td><strapi:redirectsSource /></td>
											<td><strapi:redirectsTarget /></td>
											<td><strapi:redirectsCreatedAt /></td>
											<td><strapi:redirectsUpdatedAt /></td>
											<td><strapi:redirectsPublishedAt /></td>
											<td><strapi:redirectsCreatedById /></td>
											<td><strapi:redirectsUpdatedById /></td>
											<td><a href="../redirects/edit.jsp?ID=<strapi:redirectsID />">edit</a></td>
											<td><a href="../redirects/delete.jsp?ID=<strapi:redirectsID />">delete</a></td>
										</tr>
									</strapi:redirects>
								</strapi:foreachRedirects>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../redirects/add.jsp">add Redirects</a>
						<br/><br/>

		<strapi:foreachRedirects var="idIter">
			<strapi:redirects>
						<a href="../../strapi/redirects/redirects.jsp?ID=<strapi:redirectsID />"><strapi:redirectsID /></a>
		<strapi:redirectsSource />
		<strapi:redirectsTarget />
		<strapi:redirectsCreatedAt />
		<strapi:redirectsUpdatedAt />
		<strapi:redirectsPublishedAt />
		<strapi:redirectsCreatedById />
		<strapi:redirectsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:redirects>
			</strapi:foreachRedirects>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>