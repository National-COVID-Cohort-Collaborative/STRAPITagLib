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

						<h2>Abouts List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Block1</th>
									<th>Block2</th>
									<th>Block3</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Block4</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAbouts var="idIter">
									<strapi:abouts>
										<tr>
											<td><a href="../abouts/show.jsp?ID=<strapi:aboutsID />"><strapi:aboutsID /></a></td>
											<td><strapi:aboutsBlock1 /></td>
											<td><strapi:aboutsBlock2 /></td>
											<td><strapi:aboutsBlock3 /></td>
											<td><strapi:aboutsCreatedAt /></td>
											<td><strapi:aboutsUpdatedAt /></td>
											<td><strapi:aboutsPublishedAt /></td>
											<td><strapi:aboutsCreatedById /></td>
											<td><strapi:aboutsUpdatedById /></td>
											<td><strapi:aboutsBlock4 /></td>
											<td><a href="../abouts/edit.jsp?ID=<strapi:aboutsID />">edit</a></td>
											<td><a href="../abouts/delete.jsp?ID=<strapi:aboutsID />">delete</a></td>
										</tr>
									</strapi:abouts>
								</strapi:foreachAbouts>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../abouts/add.jsp">add Abouts</a>
						<br/><br/>

		<strapi:foreachAbouts var="idIter">
			<strapi:abouts>
						<a href="../../strapi/abouts/abouts.jsp?ID=<strapi:aboutsID />"><strapi:aboutsID /></a>
		<strapi:aboutsBlock1 />
		<strapi:aboutsBlock2 />
		<strapi:aboutsBlock3 />
		<strapi:aboutsCreatedAt />
		<strapi:aboutsUpdatedAt />
		<strapi:aboutsPublishedAt />
		<strapi:aboutsCreatedById />
		<strapi:aboutsUpdatedById />
		<strapi:aboutsBlock4 />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:abouts>
			</strapi:foreachAbouts>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>