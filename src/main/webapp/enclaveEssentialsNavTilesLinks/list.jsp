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

						<h2>EnclaveEssentialsNavTilesLinks List</h2>
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
								<strapi:foreachEnclaveEssentialsNavTilesLinks var="idIter">
									<strapi:enclaveEssentialsNavTilesLinks>
										<tr>
											<td><a href="../enclaveEssentialsNavTilesLinks/show.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />"><strapi:enclaveEssentialsNavTilesLinksID /></a></td>
											<td><strapi:enclaveEssentialsNavTilesLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftId /></td>
											<td><strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftOrder /></td>
											<td><a href="../enclaveEssentialsNavTilesLinks/edit.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsNavTilesLinks/delete.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsNavTilesLinks>
								</strapi:foreachEnclaveEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsNavTilesLinks var="idIter">
			<strapi:enclaveEssentialsNavTilesLinks>
						<a href="../../strapi/enclaveEssentialsNavTilesLinks/enclaveEssentialsNavTilesLinks.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />"><strapi:enclaveEssentialsNavTilesLinksID /></a>
		<strapi:enclaveEssentialsNavTilesLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftId />
		<strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsNavTilesLinks>
			</strapi:foreachEnclaveEssentialsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>