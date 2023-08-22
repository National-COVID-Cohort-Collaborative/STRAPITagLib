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

						<h2>CommunicationMaterials List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
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
								<strapi:foreachCommunicationMaterials var="idIter">
									<strapi:communicationMaterials>
										<tr>
											<td><a href="../communicationMaterials/show.jsp?ID=<strapi:communicationMaterialsID />"><strapi:communicationMaterialsID /></a></td>
											<td><strapi:communicationMaterialsHeader /></td>
											<td><strapi:communicationMaterialsBlock /></td>
											<td><strapi:communicationMaterialsCreatedAt /></td>
											<td><strapi:communicationMaterialsUpdatedAt /></td>
											<td><strapi:communicationMaterialsPublishedAt /></td>
											<td><strapi:communicationMaterialsCreatedById /></td>
											<td><strapi:communicationMaterialsUpdatedById /></td>
											<td><a href="../communicationMaterials/edit.jsp?ID=<strapi:communicationMaterialsID />">edit</a></td>
											<td><a href="../communicationMaterials/delete.jsp?ID=<strapi:communicationMaterialsID />">delete</a></td>
										</tr>
									</strapi:communicationMaterials>
								</strapi:foreachCommunicationMaterials>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../communicationMaterials/add.jsp">add CommunicationMaterials</a>
						<br/><br/>

		<strapi:foreachCommunicationMaterials var="idIter">
			<strapi:communicationMaterials>
						<a href="../../strapi/communicationMaterials/communicationMaterials.jsp?ID=<strapi:communicationMaterialsID />"><strapi:communicationMaterialsID /></a>
		<strapi:communicationMaterialsHeader />
		<strapi:communicationMaterialsBlock />
		<strapi:communicationMaterialsCreatedAt />
		<strapi:communicationMaterialsUpdatedAt />
		<strapi:communicationMaterialsPublishedAt />
		<strapi:communicationMaterialsCreatedById />
		<strapi:communicationMaterialsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:communicationMaterials>
			</strapi:foreachCommunicationMaterials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>