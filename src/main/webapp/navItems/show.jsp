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
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:navItems ID="${ID}">
	<h2>NavItems: <strapi:navItemsID /></h2>
		<table border=1>
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
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:navItemsID />"><strapi:navItemsID /></a></td>
				<td><strapi:navItemsLabel /></td>
				<td><strapi:navItemsUrl /></td>
				<td><strapi:navItemsCreatedAt /></td>
				<td><strapi:navItemsUpdatedAt /></td>
				<td><strapi:navItemsPublishedAt /></td>
				<td><strapi:navItemsCreatedById /></td>
				<td><strapi:navItemsUpdatedById /></td>
				<td><strapi:navItemsPageId /></td>
			</tr>
		</table>

						<h2>NavItemsNavColumnLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>NavItemId</th>
									<th>NavColumnId</th>
									<th>NavItemOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNavItemsNavColumnLinks var="idIter">
									<strapi:navItemsNavColumnLinks>
										<tr>
											<td><a href="../navItemsNavColumnLinks/show.jsp?ID=<strapi:navItemsNavColumnLinksID />"><strapi:navItemsNavColumnLinksID /></a></td>
											<td><strapi:navItemsNavColumnLinksNavItemId /></td>
											<td><strapi:navItemsNavColumnLinksNavColumnId /></td>
											<td><strapi:navItemsNavColumnLinksNavItemOrder /></td>
											<td><a href="../navItemsNavColumnLinks/edit.jsp?ID=<strapi:navItemsNavColumnLinksID />">edit</a></td>
											<td><a href="../navItemsNavColumnLinks/delete.jsp?ID=<strapi:navItemsNavColumnLinksID />">delete</a></td>
										</tr>
									</strapi:navItemsNavColumnLinks>
								</strapi:foreachNavItemsNavColumnLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../navItemsNavColumnLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add NavItemsNavColumnLinks</a>
						<br/><br/>

		<strapi:foreachNavItemsNavColumnLinks var="idIter">
			<strapi:navItemsNavColumnLinks>
						<a href="../../strapi/navItemsNavColumnLinks/navItemsNavColumnLinks.jsp?ID=<strapi:navItemsNavColumnLinksID />"><strapi:navItemsNavColumnLinksID /></a>
		<strapi:navItemsNavColumnLinksNavItemId />
		<strapi:navItemsNavColumnLinksNavColumnId />
		<strapi:navItemsNavColumnLinksNavItemOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:navItemsNavColumnLinks>
			</strapi:foreachNavItemsNavColumnLinks>
</strapi:navItems>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>