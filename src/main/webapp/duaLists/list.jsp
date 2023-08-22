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

						<h2>DuaLists List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
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
								<strapi:foreachDuaLists var="idIter">
									<strapi:duaLists>
										<tr>
											<td><a href="../duaLists/show.jsp?ID=<strapi:duaListsID />"><strapi:duaListsID /></a></td>
											<td><strapi:duaListsHeader /></td>
											<td><strapi:duaListsBlock1 /></td>
											<td><strapi:duaListsCreatedAt /></td>
											<td><strapi:duaListsUpdatedAt /></td>
											<td><strapi:duaListsPublishedAt /></td>
											<td><strapi:duaListsCreatedById /></td>
											<td><strapi:duaListsUpdatedById /></td>
											<td><a href="../duaLists/edit.jsp?ID=<strapi:duaListsID />">edit</a></td>
											<td><a href="../duaLists/delete.jsp?ID=<strapi:duaListsID />">delete</a></td>
										</tr>
									</strapi:duaLists>
								</strapi:foreachDuaLists>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../duaLists/add.jsp">add DuaLists</a>
						<br/><br/>

		<strapi:foreachDuaLists var="idIter">
			<strapi:duaLists>
						<a href="../../strapi/duaLists/duaLists.jsp?ID=<strapi:duaListsID />"><strapi:duaListsID /></a>
		<strapi:duaListsHeader />
		<strapi:duaListsBlock1 />
		<strapi:duaListsCreatedAt />
		<strapi:duaListsUpdatedAt />
		<strapi:duaListsPublishedAt />
		<strapi:duaListsCreatedById />
		<strapi:duaListsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:duaLists>
			</strapi:foreachDuaLists>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>