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

						<h2>Workstreams List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Block1</th>
									<th>Block2</th>
									<th>Events</th>
									<th>Block3</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreams var="idIter">
									<strapi:workstreams>
										<tr>
											<td><a href="../workstreams/show.jsp?ID=<strapi:workstreamsID />"><strapi:workstreamsID /></a></td>
											<td><strapi:workstreamsHeader /></td>
											<td><strapi:workstreamsBlock1 /></td>
											<td><strapi:workstreamsBlock2 /></td>
											<td><strapi:workstreamsEvents /></td>
											<td><strapi:workstreamsBlock3 /></td>
											<td><strapi:workstreamsCreatedAt /></td>
											<td><strapi:workstreamsUpdatedAt /></td>
											<td><strapi:workstreamsPublishedAt /></td>
											<td><strapi:workstreamsCreatedById /></td>
											<td><strapi:workstreamsUpdatedById /></td>
											<td><a href="../workstreams/edit.jsp?ID=<strapi:workstreamsID />">edit</a></td>
											<td><a href="../workstreams/delete.jsp?ID=<strapi:workstreamsID />">delete</a></td>
										</tr>
									</strapi:workstreams>
								</strapi:foreachWorkstreams>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreams/add.jsp">add Workstreams</a>
						<br/><br/>

		<strapi:foreachWorkstreams var="idIter">
			<strapi:workstreams>
						<a href="../../strapi/workstreams/workstreams.jsp?ID=<strapi:workstreamsID />"><strapi:workstreamsID /></a>
		<strapi:workstreamsHeader />
		<strapi:workstreamsBlock1 />
		<strapi:workstreamsBlock2 />
		<strapi:workstreamsEvents />
		<strapi:workstreamsBlock3 />
		<strapi:workstreamsCreatedAt />
		<strapi:workstreamsUpdatedAt />
		<strapi:workstreamsPublishedAt />
		<strapi:workstreamsCreatedById />
		<strapi:workstreamsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreams>
			</strapi:foreachWorkstreams>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>