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

						<h2>NavBars List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Name</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNavBars var="idIter">
									<strapi:navBars>
										<tr>
											<td><a href="../navBars/show.jsp?ID=<strapi:navBarsID />"><strapi:navBarsID /></a></td>
											<td><strapi:navBarsCreatedAt /></td>
											<td><strapi:navBarsUpdatedAt /></td>
											<td><strapi:navBarsPublishedAt /></td>
											<td><strapi:navBarsCreatedById /></td>
											<td><strapi:navBarsUpdatedById /></td>
											<td><strapi:navBarsName /></td>
											<td><a href="../navBars/edit.jsp?ID=<strapi:navBarsID />">edit</a></td>
											<td><a href="../navBars/delete.jsp?ID=<strapi:navBarsID />">delete</a></td>
										</tr>
									</strapi:navBars>
								</strapi:foreachNavBars>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../navBars/add.jsp">add NavBars</a>
						<br/><br/>

		<strapi:foreachNavBars var="idIter">
			<strapi:navBars>
						<a href="../../strapi/navBars/navBars.jsp?ID=<strapi:navBarsID />"><strapi:navBarsID /></a>
		<strapi:navBarsCreatedAt />
		<strapi:navBarsUpdatedAt />
		<strapi:navBarsPublishedAt />
		<strapi:navBarsCreatedById />
		<strapi:navBarsUpdatedById />
		<strapi:navBarsName />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:navBars>
			</strapi:foreachNavBars>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>