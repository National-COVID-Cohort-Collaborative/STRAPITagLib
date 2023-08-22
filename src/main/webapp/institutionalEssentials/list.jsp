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

						<h2>InstitutionalEssentials List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Header2</th>
									<th>Block</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachInstitutionalEssentials var="idIter">
									<strapi:institutionalEssentials>
										<tr>
											<td><a href="../institutionalEssentials/show.jsp?ID=<strapi:institutionalEssentialsID />"><strapi:institutionalEssentialsID /></a></td>
											<td><strapi:institutionalEssentialsHeader /></td>
											<td><strapi:institutionalEssentialsHeader2 /></td>
											<td><strapi:institutionalEssentialsBlock /></td>
											<td><strapi:institutionalEssentialsCreatedAt /></td>
											<td><strapi:institutionalEssentialsUpdatedAt /></td>
											<td><strapi:institutionalEssentialsPublishedAt /></td>
											<td><strapi:institutionalEssentialsCreatedById /></td>
											<td><strapi:institutionalEssentialsUpdatedById /></td>
											<td><a href="../institutionalEssentials/edit.jsp?ID=<strapi:institutionalEssentialsID />">edit</a></td>
											<td><a href="../institutionalEssentials/delete.jsp?ID=<strapi:institutionalEssentialsID />">delete</a></td>
										</tr>
									</strapi:institutionalEssentials>
								</strapi:foreachInstitutionalEssentials>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../institutionalEssentials/add.jsp">add InstitutionalEssentials</a>
						<br/><br/>

		<strapi:foreachInstitutionalEssentials var="idIter">
			<strapi:institutionalEssentials>
						<a href="../../strapi/institutionalEssentials/institutionalEssentials.jsp?ID=<strapi:institutionalEssentialsID />"><strapi:institutionalEssentialsID /></a>
		<strapi:institutionalEssentialsHeader />
		<strapi:institutionalEssentialsHeader2 />
		<strapi:institutionalEssentialsBlock />
		<strapi:institutionalEssentialsCreatedAt />
		<strapi:institutionalEssentialsUpdatedAt />
		<strapi:institutionalEssentialsPublishedAt />
		<strapi:institutionalEssentialsCreatedById />
		<strapi:institutionalEssentialsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:institutionalEssentials>
			</strapi:foreachInstitutionalEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>