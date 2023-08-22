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

						<h2>TeamCreationsResourcesFaqsLinks List</h2>
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
								<strapi:foreachTeamCreationsResourcesFaqsLinks var="idIter">
									<strapi:teamCreationsResourcesFaqsLinks>
										<tr>
											<td><a href="../teamCreationsResourcesFaqsLinks/show.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />"><strapi:teamCreationsResourcesFaqsLinksID /></a></td>
											<td><strapi:teamCreationsResourcesFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsResourcesFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsResourcesFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsResourcesFaqsLinks/edit.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsResourcesFaqsLinks/delete.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsResourcesFaqsLinks>
								</strapi:foreachTeamCreationsResourcesFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsResourcesFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsResourcesFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsResourcesFaqsLinks var="idIter">
			<strapi:teamCreationsResourcesFaqsLinks>
						<a href="../../strapi/teamCreationsResourcesFaqsLinks/teamCreationsResourcesFaqsLinks.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />"><strapi:teamCreationsResourcesFaqsLinksID /></a>
		<strapi:teamCreationsResourcesFaqsLinksTeamCreationId />
		<strapi:teamCreationsResourcesFaqsLinksFaqId />
		<strapi:teamCreationsResourcesFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsResourcesFaqsLinks>
			</strapi:foreachTeamCreationsResourcesFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>