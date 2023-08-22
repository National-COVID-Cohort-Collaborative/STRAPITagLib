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

						<h2>TeamCreationsResponsibilityFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsResponsibilityFaqsLinks var="idIter">
									<strapi:teamCreationsResponsibilityFaqsLinks>
										<tr>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/show.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />"><strapi:teamCreationsResponsibilityFaqsLinksID /></a></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/edit.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/delete.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsResponsibilityFaqsLinks>
								</strapi:foreachTeamCreationsResponsibilityFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsResponsibilityFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsResponsibilityFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsResponsibilityFaqsLinks var="idIter">
			<strapi:teamCreationsResponsibilityFaqsLinks>
						<a href="../../strapi/teamCreationsResponsibilityFaqsLinks/teamCreationsResponsibilityFaqsLinks.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />"><strapi:teamCreationsResponsibilityFaqsLinksID /></a>
		<strapi:teamCreationsResponsibilityFaqsLinksTeamCreationId />
		<strapi:teamCreationsResponsibilityFaqsLinksFaqId />
		<strapi:teamCreationsResponsibilityFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsResponsibilityFaqsLinks>
			</strapi:foreachTeamCreationsResponsibilityFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>