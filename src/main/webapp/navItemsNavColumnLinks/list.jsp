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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>