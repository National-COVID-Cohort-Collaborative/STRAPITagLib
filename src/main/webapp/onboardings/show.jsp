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
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:onboardings ID="${ID}">
	<h2>Onboardings: <strapi:onboardingsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Subheader</th>
			<th>RegistrationHeader</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>Block</th>
			<th>Block2</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:onboardingsID />"><strapi:onboardingsID /></a></td>
				<td><strapi:onboardingsHeader /></td>
				<td><strapi:onboardingsSubheader /></td>
				<td><strapi:onboardingsRegistrationHeader /></td>
				<td><strapi:onboardingsCreatedAt /></td>
				<td><strapi:onboardingsUpdatedAt /></td>
				<td><strapi:onboardingsPublishedAt /></td>
				<td><strapi:onboardingsCreatedById /></td>
				<td><strapi:onboardingsUpdatedById /></td>
				<td><strapi:onboardingsBlock /></td>
				<td><strapi:onboardingsBlock2 /></td>
			</tr>
		</table>

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

						<h2>OnboardingsStepLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>OnboardingId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachOnboardingsStepLinks var="idIter">
									<strapi:onboardingsStepLinks>
										<tr>
											<td><a href="../onboardingsStepLinks/show.jsp?ID=<strapi:onboardingsStepLinksID />"><strapi:onboardingsStepLinksID /></a></td>
											<td><strapi:onboardingsStepLinksOnboardingId /></td>
											<td><strapi:onboardingsStepLinksContentImageBlockRightId /></td>
											<td><strapi:onboardingsStepLinksContentImageBlockRightOrder /></td>
											<td><a href="../onboardingsStepLinks/edit.jsp?ID=<strapi:onboardingsStepLinksID />">edit</a></td>
											<td><a href="../onboardingsStepLinks/delete.jsp?ID=<strapi:onboardingsStepLinksID />">delete</a></td>
										</tr>
									</strapi:onboardingsStepLinks>
								</strapi:foreachOnboardingsStepLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../onboardingsStepLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add OnboardingsStepLinks</a>
						<br/><br/>

		<strapi:foreachOnboardingsStepLinks var="idIter">
			<strapi:onboardingsStepLinks>
						<a href="../../strapi/onboardingsStepLinks/onboardingsStepLinks.jsp?ID=<strapi:onboardingsStepLinksID />"><strapi:onboardingsStepLinksID /></a>
		<strapi:onboardingsStepLinksOnboardingId />
		<strapi:onboardingsStepLinksContentImageBlockRightId />
		<strapi:onboardingsStepLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:onboardingsStepLinks>
			</strapi:foreachOnboardingsStepLinks>
</strapi:onboardings>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>