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

						<h2>ResearcherEssentials List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentials var="idIter">
									<strapi:researcherEssentials>
										<tr>
											<td><a href="../researcherEssentials/show.jsp?ID=<strapi:researcherEssentialsID />"><strapi:researcherEssentialsID /></a></td>
											<td><strapi:researcherEssentialsHeader /></td>
											<td><strapi:researcherEssentialsCreatedAt /></td>
											<td><strapi:researcherEssentialsUpdatedAt /></td>
											<td><strapi:researcherEssentialsPublishedAt /></td>
											<td><strapi:researcherEssentialsCreatedById /></td>
											<td><strapi:researcherEssentialsUpdatedById /></td>
											<td><a href="../researcherEssentials/edit.jsp?ID=<strapi:researcherEssentialsID />">edit</a></td>
											<td><a href="../researcherEssentials/delete.jsp?ID=<strapi:researcherEssentialsID />">delete</a></td>
										</tr>
									</strapi:researcherEssentials>
								</strapi:foreachResearcherEssentials>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentials/add.jsp">add ResearcherEssentials</a>
						<br/><br/>

		<strapi:foreachResearcherEssentials var="idIter">
			<strapi:researcherEssentials>
						<a href="../../strapi/researcherEssentials/researcherEssentials.jsp?ID=<strapi:researcherEssentialsID />"><strapi:researcherEssentialsID /></a>
		<strapi:researcherEssentialsHeader />
		<strapi:researcherEssentialsCreatedAt />
		<strapi:researcherEssentialsUpdatedAt />
		<strapi:researcherEssentialsPublishedAt />
		<strapi:researcherEssentialsCreatedById />
		<strapi:researcherEssentialsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentials>
			</strapi:foreachResearcherEssentials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>