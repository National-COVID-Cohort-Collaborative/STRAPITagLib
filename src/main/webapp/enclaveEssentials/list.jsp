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

						<h2>EnclaveEssentials List</h2>
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
								<strapi:foreachEnclaveEssentials var="idIter">
									<strapi:enclaveEssentials>
										<tr>
											<td><a href="../enclaveEssentials/show.jsp?ID=<strapi:enclaveEssentialsID />"><strapi:enclaveEssentialsID /></a></td>
											<td><strapi:enclaveEssentialsHeader /></td>
											<td><strapi:enclaveEssentialsBlock1 /></td>
											<td><strapi:enclaveEssentialsCreatedAt /></td>
											<td><strapi:enclaveEssentialsUpdatedAt /></td>
											<td><strapi:enclaveEssentialsPublishedAt /></td>
											<td><strapi:enclaveEssentialsCreatedById /></td>
											<td><strapi:enclaveEssentialsUpdatedById /></td>
											<td><a href="../enclaveEssentials/edit.jsp?ID=<strapi:enclaveEssentialsID />">edit</a></td>
											<td><a href="../enclaveEssentials/delete.jsp?ID=<strapi:enclaveEssentialsID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentials>
								</strapi:foreachEnclaveEssentials>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentials/add.jsp">add EnclaveEssentials</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentials var="idIter">
			<strapi:enclaveEssentials>
						<a href="../../strapi/enclaveEssentials/enclaveEssentials.jsp?ID=<strapi:enclaveEssentialsID />"><strapi:enclaveEssentialsID /></a>
		<strapi:enclaveEssentialsHeader />
		<strapi:enclaveEssentialsBlock1 />
		<strapi:enclaveEssentialsCreatedAt />
		<strapi:enclaveEssentialsUpdatedAt />
		<strapi:enclaveEssentialsPublishedAt />
		<strapi:enclaveEssentialsCreatedById />
		<strapi:enclaveEssentialsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentials>
			</strapi:foreachEnclaveEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>