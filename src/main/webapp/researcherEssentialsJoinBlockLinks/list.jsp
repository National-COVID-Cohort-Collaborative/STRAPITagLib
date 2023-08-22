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

						<h2>ResearcherEssentialsJoinBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsJoinBlockLinks var="idIter">
									<strapi:researcherEssentialsJoinBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsJoinBlockLinks/show.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />"><strapi:researcherEssentialsJoinBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../researcherEssentialsJoinBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsJoinBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsJoinBlockLinks>
								</strapi:foreachResearcherEssentialsJoinBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsJoinBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsJoinBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsJoinBlockLinks var="idIter">
			<strapi:researcherEssentialsJoinBlockLinks>
						<a href="../../strapi/researcherEssentialsJoinBlockLinks/researcherEssentialsJoinBlockLinks.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />"><strapi:researcherEssentialsJoinBlockLinksID /></a>
		<strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsJoinBlockLinks>
			</strapi:foreachResearcherEssentialsJoinBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>