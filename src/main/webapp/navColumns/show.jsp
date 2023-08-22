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
<strapi:navColumns ID="${ID}">
	<h2>NavColumns: <strapi:navColumnsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Label</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>Url</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:navColumnsID />"><strapi:navColumnsID /></a></td>
				<td><strapi:navColumnsLabel /></td>
				<td><strapi:navColumnsCreatedAt /></td>
				<td><strapi:navColumnsUpdatedAt /></td>
				<td><strapi:navColumnsPublishedAt /></td>
				<td><strapi:navColumnsCreatedById /></td>
				<td><strapi:navColumnsUpdatedById /></td>
				<td><strapi:navColumnsUrl /></td>
			</tr>
		</table>

						<h2>NavColumnsNavBarLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>NavColumnId</th>
									<th>NavBarId</th>
									<th>NavColumnOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNavColumnsNavBarLinks var="idIter">
									<strapi:navColumnsNavBarLinks>
										<tr>
											<td><a href="../navColumnsNavBarLinks/show.jsp?ID=<strapi:navColumnsNavBarLinksID />"><strapi:navColumnsNavBarLinksID /></a></td>
											<td><strapi:navColumnsNavBarLinksNavColumnId /></td>
											<td><strapi:navColumnsNavBarLinksNavBarId /></td>
											<td><strapi:navColumnsNavBarLinksNavColumnOrder /></td>
											<td><a href="../navColumnsNavBarLinks/edit.jsp?ID=<strapi:navColumnsNavBarLinksID />">edit</a></td>
											<td><a href="../navColumnsNavBarLinks/delete.jsp?ID=<strapi:navColumnsNavBarLinksID />">delete</a></td>
										</tr>
									</strapi:navColumnsNavBarLinks>
								</strapi:foreachNavColumnsNavBarLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../navColumnsNavBarLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add NavColumnsNavBarLinks</a>
						<br/><br/>

		<strapi:foreachNavColumnsNavBarLinks var="idIter">
			<strapi:navColumnsNavBarLinks>
						<a href="../../strapi/navColumnsNavBarLinks/navColumnsNavBarLinks.jsp?ID=<strapi:navColumnsNavBarLinksID />"><strapi:navColumnsNavBarLinksID /></a>
		<strapi:navColumnsNavBarLinksNavColumnId />
		<strapi:navColumnsNavBarLinksNavBarId />
		<strapi:navColumnsNavBarLinksNavColumnOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:navColumnsNavBarLinks>
			</strapi:foreachNavColumnsNavBarLinks>

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
</strapi:navColumns>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>