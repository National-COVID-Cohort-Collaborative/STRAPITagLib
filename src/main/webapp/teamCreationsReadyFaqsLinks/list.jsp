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

						<h2>TeamCreationsReadyFaqsLinks List</h2>
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
								<strapi:foreachTeamCreationsReadyFaqsLinks var="idIter">
									<strapi:teamCreationsReadyFaqsLinks>
										<tr>
											<td><a href="../teamCreationsReadyFaqsLinks/show.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />"><strapi:teamCreationsReadyFaqsLinksID /></a></td>
											<td><strapi:teamCreationsReadyFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsReadyFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsReadyFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsReadyFaqsLinks/edit.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsReadyFaqsLinks/delete.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsReadyFaqsLinks>
								</strapi:foreachTeamCreationsReadyFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsReadyFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsReadyFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsReadyFaqsLinks var="idIter">
			<strapi:teamCreationsReadyFaqsLinks>
						<a href="../../strapi/teamCreationsReadyFaqsLinks/teamCreationsReadyFaqsLinks.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />"><strapi:teamCreationsReadyFaqsLinksID /></a>
		<strapi:teamCreationsReadyFaqsLinksTeamCreationId />
		<strapi:teamCreationsReadyFaqsLinksFaqId />
		<strapi:teamCreationsReadyFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsReadyFaqsLinks>
			</strapi:foreachTeamCreationsReadyFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>