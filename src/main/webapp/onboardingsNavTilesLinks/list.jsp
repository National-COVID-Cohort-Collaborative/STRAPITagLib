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

						<h2>OnboardingsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>OnboardingId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachOnboardingsNavTilesLinks var="idIter">
									<strapi:onboardingsNavTilesLinks>
										<tr>
											<td><a href="../onboardingsNavTilesLinks/show.jsp?ID=<strapi:onboardingsNavTilesLinksID />"><strapi:onboardingsNavTilesLinksID /></a></td>
											<td><strapi:onboardingsNavTilesLinksOnboardingId /></td>
											<td><strapi:onboardingsNavTilesLinksNavTileId /></td>
											<td><strapi:onboardingsNavTilesLinksNavTileOrder /></td>
											<td><a href="../onboardingsNavTilesLinks/edit.jsp?ID=<strapi:onboardingsNavTilesLinksID />">edit</a></td>
											<td><a href="../onboardingsNavTilesLinks/delete.jsp?ID=<strapi:onboardingsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:onboardingsNavTilesLinks>
								</strapi:foreachOnboardingsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../onboardingsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add OnboardingsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachOnboardingsNavTilesLinks var="idIter">
			<strapi:onboardingsNavTilesLinks>
						<a href="../../strapi/onboardingsNavTilesLinks/onboardingsNavTilesLinks.jsp?ID=<strapi:onboardingsNavTilesLinksID />"><strapi:onboardingsNavTilesLinksID /></a>
		<strapi:onboardingsNavTilesLinksOnboardingId />
		<strapi:onboardingsNavTilesLinksNavTileId />
		<strapi:onboardingsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:onboardingsNavTilesLinks>
			</strapi:foreachOnboardingsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>