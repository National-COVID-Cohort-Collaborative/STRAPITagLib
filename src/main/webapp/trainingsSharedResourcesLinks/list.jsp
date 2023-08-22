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

						<h2>TrainingsSharedResourcesLinks List</h2>
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
								<strapi:foreachTrainingsSharedResourcesLinks var="idIter">
									<strapi:trainingsSharedResourcesLinks>
										<tr>
											<td><a href="../trainingsSharedResourcesLinks/show.jsp?ID=<strapi:trainingsSharedResourcesLinksID />"><strapi:trainingsSharedResourcesLinksID /></a></td>
											<td><strapi:trainingsSharedResourcesLinksTrainingId /></td>
											<td><strapi:trainingsSharedResourcesLinksResourceId /></td>
											<td><strapi:trainingsSharedResourcesLinksResourceOrder /></td>
											<td><a href="../trainingsSharedResourcesLinks/edit.jsp?ID=<strapi:trainingsSharedResourcesLinksID />">edit</a></td>
											<td><a href="../trainingsSharedResourcesLinks/delete.jsp?ID=<strapi:trainingsSharedResourcesLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsSharedResourcesLinks>
								</strapi:foreachTrainingsSharedResourcesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsSharedResourcesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsSharedResourcesLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsSharedResourcesLinks var="idIter">
			<strapi:trainingsSharedResourcesLinks>
						<a href="../../strapi/trainingsSharedResourcesLinks/trainingsSharedResourcesLinks.jsp?ID=<strapi:trainingsSharedResourcesLinksID />"><strapi:trainingsSharedResourcesLinksID /></a>
		<strapi:trainingsSharedResourcesLinksTrainingId />
		<strapi:trainingsSharedResourcesLinksResourceId />
		<strapi:trainingsSharedResourcesLinksResourceOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsSharedResourcesLinks>
			</strapi:foreachTrainingsSharedResourcesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>