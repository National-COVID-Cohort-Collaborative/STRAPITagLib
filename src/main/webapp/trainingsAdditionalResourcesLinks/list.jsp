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

						<h2>TrainingsAdditionalResourcesLinks List</h2>
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
								<strapi:foreachTrainingsAdditionalResourcesLinks var="idIter">
									<strapi:trainingsAdditionalResourcesLinks>
										<tr>
											<td><a href="../trainingsAdditionalResourcesLinks/show.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />"><strapi:trainingsAdditionalResourcesLinksID /></a></td>
											<td><strapi:trainingsAdditionalResourcesLinksTrainingId /></td>
											<td><strapi:trainingsAdditionalResourcesLinksResourceId /></td>
											<td><strapi:trainingsAdditionalResourcesLinksResourceOrder /></td>
											<td><a href="../trainingsAdditionalResourcesLinks/edit.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />">edit</a></td>
											<td><a href="../trainingsAdditionalResourcesLinks/delete.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />">delete</a></td>
										</tr>
									</strapi:trainingsAdditionalResourcesLinks>
								</strapi:foreachTrainingsAdditionalResourcesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../trainingsAdditionalResourcesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TrainingsAdditionalResourcesLinks</a>
						<br/><br/>

		<strapi:foreachTrainingsAdditionalResourcesLinks var="idIter">
			<strapi:trainingsAdditionalResourcesLinks>
						<a href="../../strapi/trainingsAdditionalResourcesLinks/trainingsAdditionalResourcesLinks.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />"><strapi:trainingsAdditionalResourcesLinksID /></a>
		<strapi:trainingsAdditionalResourcesLinksTrainingId />
		<strapi:trainingsAdditionalResourcesLinksResourceId />
		<strapi:trainingsAdditionalResourcesLinksResourceOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:trainingsAdditionalResourcesLinks>
			</strapi:foreachTrainingsAdditionalResourcesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>