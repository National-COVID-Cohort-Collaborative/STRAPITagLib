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

						<h2>ResearcherEssentialsAccessBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsAccessBlockLinks var="idIter">
									<strapi:researcherEssentialsAccessBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsAccessBlockLinks/show.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />"><strapi:researcherEssentialsAccessBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId /></td>
											<td><a href="../researcherEssentialsAccessBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsAccessBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsAccessBlockLinks>
								</strapi:foreachResearcherEssentialsAccessBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsAccessBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsAccessBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsAccessBlockLinks var="idIter">
			<strapi:researcherEssentialsAccessBlockLinks>
						<a href="../../strapi/researcherEssentialsAccessBlockLinks/researcherEssentialsAccessBlockLinks.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />"><strapi:researcherEssentialsAccessBlockLinksID /></a>
		<strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsAccessBlockLinks>
			</strapi:foreachResearcherEssentialsAccessBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>