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

						<h2>Missions List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Block1</th>
									<th>Block2</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachMissions var="idIter">
									<strapi:missions>
										<tr>
											<td><a href="../missions/show.jsp?ID=<strapi:missionsID />"><strapi:missionsID /></a></td>
											<td><strapi:missionsBlock1 /></td>
											<td><strapi:missionsBlock2 /></td>
											<td><strapi:missionsCreatedAt /></td>
											<td><strapi:missionsUpdatedAt /></td>
											<td><strapi:missionsPublishedAt /></td>
											<td><strapi:missionsCreatedById /></td>
											<td><strapi:missionsUpdatedById /></td>
											<td><a href="../missions/edit.jsp?ID=<strapi:missionsID />">edit</a></td>
											<td><a href="../missions/delete.jsp?ID=<strapi:missionsID />">delete</a></td>
										</tr>
									</strapi:missions>
								</strapi:foreachMissions>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../missions/add.jsp">add Missions</a>
						<br/><br/>

		<strapi:foreachMissions var="idIter">
			<strapi:missions>
						<a href="../../strapi/missions/missions.jsp?ID=<strapi:missionsID />"><strapi:missionsID /></a>
		<strapi:missionsBlock1 />
		<strapi:missionsBlock2 />
		<strapi:missionsCreatedAt />
		<strapi:missionsUpdatedAt />
		<strapi:missionsPublishedAt />
		<strapi:missionsCreatedById />
		<strapi:missionsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:missions>
			</strapi:foreachMissions>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>