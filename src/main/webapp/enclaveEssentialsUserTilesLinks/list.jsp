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

						<h2>EnclaveEssentialsUserTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>EnclaveEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th>ContentImageBlockLeftOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachEnclaveEssentialsUserTilesLinks var="idIter">
									<strapi:enclaveEssentialsUserTilesLinks>
										<tr>
											<td><a href="../enclaveEssentialsUserTilesLinks/show.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />"><strapi:enclaveEssentialsUserTilesLinksID /></a></td>
											<td><strapi:enclaveEssentialsUserTilesLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftId /></td>
											<td><strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftOrder /></td>
											<td><a href="../enclaveEssentialsUserTilesLinks/edit.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsUserTilesLinks/delete.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsUserTilesLinks>
								</strapi:foreachEnclaveEssentialsUserTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsUserTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsUserTilesLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsUserTilesLinks var="idIter">
			<strapi:enclaveEssentialsUserTilesLinks>
						<a href="../../strapi/enclaveEssentialsUserTilesLinks/enclaveEssentialsUserTilesLinks.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />"><strapi:enclaveEssentialsUserTilesLinksID /></a>
		<strapi:enclaveEssentialsUserTilesLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftId />
		<strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsUserTilesLinks>
			</strapi:foreachEnclaveEssentialsUserTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>