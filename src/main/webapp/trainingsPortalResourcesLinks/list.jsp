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

						<h2>TrainingsPortalResourcesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TrainingId</th>
									<th>ResourceId</th>
									<th>ResourceOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTrainingsPortalResourcesLinks var="idIter">
									<strapi:trainingsPortalResourcesLinks>
										<tr>
											<td><a href="../trainingsPortalResourcesLinks/show.jsp?ID=<strapi:trainingsPortalResourcesLinksID />"><strapi:trainingsPortalResourcesLinksID /></a></td>
											<td><strapi:trainingsPortalResourcesLinksTrainingId /></td>
											<td><strapi:trainingsPortalResourcesLinksResourceId /></td>
											<td><strapi:trainingsPortalResourcesLinksResourceOrder /></td>
											<td><a href="../trainingsPortalResourcesLinks/edit.jsp?ID=<strapi:trainingsPortalResourcesLinksID />">edit</a></td>
											<td><a href="../trainingsPortalResourcesLinks/delete.jsp?ID=<strapi:trainingsPortalResourcesLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsPortalResourcesLinks>
								</strapi:foreachTrainingsPortalResourcesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsPortalResourcesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsPortalResourcesLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsPortalResourcesLinks var="idIter">
			<strapi:trainingsPortalResourcesLinks>
						<a href="../../strapi/trainingsPortalResourcesLinks/trainingsPortalResourcesLinks.jsp?ID=<strapi:trainingsPortalResourcesLinksID />"><strapi:trainingsPortalResourcesLinksID /></a>
		<strapi:trainingsPortalResourcesLinksTrainingId />
		<strapi:trainingsPortalResourcesLinksResourceId />
		<strapi:trainingsPortalResourcesLinksResourceOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsPortalResourcesLinks>
			</strapi:foreachTrainingsPortalResourcesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>