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

						<h2>ResearcherEssentialsGovernanceBlockLinks List</h2>
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
								<strapi:foreachResearcherEssentialsGovernanceBlockLinks var="idIter">
									<strapi:researcherEssentialsGovernanceBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/show.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />"><strapi:researcherEssentialsGovernanceBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsGovernanceBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsGovernanceBlockLinksContentImageBlockRightId /></td>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsGovernanceBlockLinks>
								</strapi:foreachResearcherEssentialsGovernanceBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsGovernanceBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsGovernanceBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsGovernanceBlockLinks var="idIter">
			<strapi:researcherEssentialsGovernanceBlockLinks>
						<a href="../../strapi/researcherEssentialsGovernanceBlockLinks/researcherEssentialsGovernanceBlockLinks.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />"><strapi:researcherEssentialsGovernanceBlockLinksID /></a>
		<strapi:researcherEssentialsGovernanceBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsGovernanceBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsGovernanceBlockLinks>
			</strapi:foreachResearcherEssentialsGovernanceBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>