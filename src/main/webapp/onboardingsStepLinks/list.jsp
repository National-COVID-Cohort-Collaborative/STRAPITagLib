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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>