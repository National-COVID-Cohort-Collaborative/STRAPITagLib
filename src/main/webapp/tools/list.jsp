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

						<h2>Tools List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Header2</th>
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
								<strapi:foreachTools var="idIter">
									<strapi:tools>
										<tr>
											<td><a href="../tools/show.jsp?ID=<strapi:toolsID />"><strapi:toolsID /></a></td>
											<td><strapi:toolsHeader /></td>
											<td><strapi:toolsHeader2 /></td>
											<td><strapi:toolsBlock1 /></td>
											<td><strapi:toolsCreatedAt /></td>
											<td><strapi:toolsUpdatedAt /></td>
											<td><strapi:toolsPublishedAt /></td>
											<td><strapi:toolsCreatedById /></td>
											<td><strapi:toolsUpdatedById /></td>
											<td><a href="../tools/edit.jsp?ID=<strapi:toolsID />">edit</a></td>
											<td><a href="../tools/delete.jsp?ID=<strapi:toolsID />">delete</a></td>
										</tr>
									</strapi:tools>
								</strapi:foreachTools>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tools/add.jsp">add Tools</a>
						<br/><br/>

		<strapi:foreachTools var="idIter">
			<strapi:tools>
						<a href="../../strapi/tools/tools.jsp?ID=<strapi:toolsID />"><strapi:toolsID /></a>
		<strapi:toolsHeader />
		<strapi:toolsHeader2 />
		<strapi:toolsBlock1 />
		<strapi:toolsCreatedAt />
		<strapi:toolsUpdatedAt />
		<strapi:toolsPublishedAt />
		<strapi:toolsCreatedById />
		<strapi:toolsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tools>
			</strapi:foreachTools>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>