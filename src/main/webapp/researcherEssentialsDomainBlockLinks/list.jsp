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

						<h2>ResearcherEssentialsDomainBlockLinks List</h2>
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
								<strapi:foreachResearcherEssentialsDomainBlockLinks var="idIter">
									<strapi:researcherEssentialsDomainBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsDomainBlockLinks/show.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />"><strapi:researcherEssentialsDomainBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../researcherEssentialsDomainBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsDomainBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsDomainBlockLinks>
								</strapi:foreachResearcherEssentialsDomainBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsDomainBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsDomainBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsDomainBlockLinks var="idIter">
			<strapi:researcherEssentialsDomainBlockLinks>
						<a href="../../strapi/researcherEssentialsDomainBlockLinks/researcherEssentialsDomainBlockLinks.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />"><strapi:researcherEssentialsDomainBlockLinksID /></a>
		<strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsDomainBlockLinks>
			</strapi:foreachResearcherEssentialsDomainBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>