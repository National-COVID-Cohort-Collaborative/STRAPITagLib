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

						<h2>TeamCreationsLeadFaqsLinks List</h2>
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
								<strapi:foreachTeamCreationsLeadFaqsLinks var="idIter">
									<strapi:teamCreationsLeadFaqsLinks>
										<tr>
											<td><a href="../teamCreationsLeadFaqsLinks/show.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />"><strapi:teamCreationsLeadFaqsLinksID /></a></td>
											<td><strapi:teamCreationsLeadFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsLeadFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsLeadFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsLeadFaqsLinks/edit.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsLeadFaqsLinks/delete.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsLeadFaqsLinks>
								</strapi:foreachTeamCreationsLeadFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsLeadFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsLeadFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsLeadFaqsLinks var="idIter">
			<strapi:teamCreationsLeadFaqsLinks>
						<a href="../../strapi/teamCreationsLeadFaqsLinks/teamCreationsLeadFaqsLinks.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />"><strapi:teamCreationsLeadFaqsLinksID /></a>
		<strapi:teamCreationsLeadFaqsLinksTeamCreationId />
		<strapi:teamCreationsLeadFaqsLinksFaqId />
		<strapi:teamCreationsLeadFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsLeadFaqsLinks>
			</strapi:foreachTeamCreationsLeadFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>