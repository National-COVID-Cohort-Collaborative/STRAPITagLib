<%@ include file="../../_include.jsp"  %>

<html>
    <jsp:include page="../../head.jsp" />
    <body>
        <div class="container-fluid">
            <jsp:include page="../../header.jsp" />
            <div class="row flex-nowrap">
                <div class="col-xs-3">
                    <jsp:include page="../../menu.jsp" />
                </div>
                <div class="col-xs-8">

						<h2>TeamCreationsGuidelineFaqsLinks List</h2>
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
								<strapi:foreachTeamCreationsGuidelineFaqsLinks var="idIter">
									<strapi:teamCreationsGuidelineFaqsLinks>
										<tr>
											<td><a href="../teamCreationsGuidelineFaqsLinks/show.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />"><strapi:teamCreationsGuidelineFaqsLinksID /></a></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsGuidelineFaqsLinks/edit.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsGuidelineFaqsLinks/delete.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsGuidelineFaqsLinks>
								</strapi:foreachTeamCreationsGuidelineFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsGuidelineFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsGuidelineFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsGuidelineFaqsLinks var="idIter">
			<strapi:teamCreationsGuidelineFaqsLinks>
						<a href="../../strapi/teamCreationsGuidelineFaqsLinks/teamCreationsGuidelineFaqsLinks.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />"><strapi:teamCreationsGuidelineFaqsLinksID /></a>
		<strapi:teamCreationsGuidelineFaqsLinksTeamCreationId />
		<strapi:teamCreationsGuidelineFaqsLinksFaqId />
		<strapi:teamCreationsGuidelineFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsGuidelineFaqsLinks>
			</strapi:foreachTeamCreationsGuidelineFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>