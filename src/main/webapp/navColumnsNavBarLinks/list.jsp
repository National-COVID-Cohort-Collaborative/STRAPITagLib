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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>