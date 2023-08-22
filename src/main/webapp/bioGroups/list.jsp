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

						<h2>BioGroups List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachBioGroups var="idIter">
									<strapi:bioGroups>
										<tr>
											<td><a href="../bioGroups/show.jsp?ID=<strapi:bioGroupsID />"><strapi:bioGroupsID /></a></td>
											<td><strapi:bioGroupsName /></td>
											<td><strapi:bioGroupsCreatedAt /></td>
											<td><strapi:bioGroupsUpdatedAt /></td>
											<td><strapi:bioGroupsPublishedAt /></td>
											<td><strapi:bioGroupsCreatedById /></td>
											<td><strapi:bioGroupsUpdatedById /></td>
											<td><a href="../bioGroups/edit.jsp?ID=<strapi:bioGroupsID />">edit</a></td>
											<td><a href="../bioGroups/delete.jsp?ID=<strapi:bioGroupsID />">delete</a></td>
										</tr>
									</strapi:bioGroups>
								</strapi:foreachBioGroups>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../bioGroups/add.jsp">add BioGroups</a>
						<br/><br/>

		<strapi:foreachBioGroups var="idIter">
			<strapi:bioGroups>
						<a href="../../strapi/bioGroups/bioGroups.jsp?ID=<strapi:bioGroupsID />"><strapi:bioGroupsID /></a>
		<strapi:bioGroupsName />
		<strapi:bioGroupsCreatedAt />
		<strapi:bioGroupsUpdatedAt />
		<strapi:bioGroupsPublishedAt />
		<strapi:bioGroupsCreatedById />
		<strapi:bioGroupsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:bioGroups>
			</strapi:foreachBioGroups>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>