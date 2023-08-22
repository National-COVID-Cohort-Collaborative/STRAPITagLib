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

						<h2>NavItems List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Label</th>
									<th>Url</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>PageId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNavItems var="idIter">
									<strapi:navItems>
										<tr>
											<td><a href="../navItems/show.jsp?ID=<strapi:navItemsID />"><strapi:navItemsID /></a></td>
											<td><strapi:navItemsLabel /></td>
											<td><strapi:navItemsUrl /></td>
											<td><strapi:navItemsCreatedAt /></td>
											<td><strapi:navItemsUpdatedAt /></td>
											<td><strapi:navItemsPublishedAt /></td>
											<td><strapi:navItemsCreatedById /></td>
											<td><strapi:navItemsUpdatedById /></td>
											<td><strapi:navItemsPageId /></td>
											<td><a href="../navItems/edit.jsp?ID=<strapi:navItemsID />">edit</a></td>
											<td><a href="../navItems/delete.jsp?ID=<strapi:navItemsID />">delete</a></td>
										</tr>
									</strapi:navItems>
								</strapi:foreachNavItems>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../navItems/add.jsp">add NavItems</a>
						<br/><br/>

		<strapi:foreachNavItems var="idIter">
			<strapi:navItems>
						<a href="../../strapi/navItems/navItems.jsp?ID=<strapi:navItemsID />"><strapi:navItemsID /></a>
		<strapi:navItemsLabel />
		<strapi:navItemsUrl />
		<strapi:navItemsCreatedAt />
		<strapi:navItemsUpdatedAt />
		<strapi:navItemsPublishedAt />
		<strapi:navItemsCreatedById />
		<strapi:navItemsUpdatedById />
		<strapi:navItemsPageId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:navItems>
			</strapi:foreachNavItems>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>