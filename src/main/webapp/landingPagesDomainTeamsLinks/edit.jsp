<%@ include file="../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit and not empty param.ID}">
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
								<strapi:landingPagesDomainTeamsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>LandingPagesDomainTeamsLinks</legend>
											<label for="DomainTeams">DomainTeams</label>
											<br>
												<strapi:foreachDomainTeams var="domainTeamsIter">
													<strapi:domainTeams>
													<input type="radio" name="ID" value="<strapi:domainTeamsID />"><label for="ID"><strapi:domainTeamsID /></label>
													<br>
													</strapi:domainTeams>
												</strapi:foreachDomainTeams>
											<label for="LandingPages">LandingPages</label>
											<br>
												<strapi:foreachLandingPages var="landingPagesIter">
													<strapi:landingPages>
													<input type="radio" name="ID" value="<strapi:landingPagesID />"><label for="ID"><strapi:landingPagesID /></label>
													<br>
													</strapi:landingPages>
												</strapi:foreachLandingPages>
											<label for="landingPageId">LandingPageId</label>
											<input type="text" id="landingPageId" name="landingPageId" size="40" value="<strapi:landingPagesDomainTeamsLinksLandingPageId />">
											<br>

											<label for="domainTeamId">DomainTeamId</label>
											<input type="text" id="domainTeamId" name="domainTeamId" size="40" value="<strapi:landingPagesDomainTeamsLinksDomainTeamId />">
											<br>

											<label for="domainTeamOrder">DomainTeamOrder</label>
											<input type="text" id="domainTeamOrder" name="domainTeamOrder" size="40" value="<strapi:landingPagesDomainTeamsLinksDomainTeamOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:landingPagesDomainTeamsLinks>
                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${empty param.submit and not empty param.ID}">
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
								<strapi:landingPagesDomainTeamsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>LandingPagesDomainTeamsLinks</legend>
											<label for="DomainTeams">DomainTeams</label>
											<br>
												<strapi:foreachDomainTeams var="domainTeamsIter">
													<strapi:domainTeams>
													<input type="radio" name="ID" value="<strapi:domainTeamsID />"><label for="ID"><strapi:domainTeamsID /></label>
													<br>
													</strapi:domainTeams>
												</strapi:foreachDomainTeams>
											<label for="LandingPages">LandingPages</label>
											<br>
												<strapi:foreachLandingPages var="landingPagesIter">
													<strapi:landingPages>
													<input type="radio" name="ID" value="<strapi:landingPagesID />"><label for="ID"><strapi:landingPagesID /></label>
													<br>
													</strapi:landingPages>
												</strapi:foreachLandingPages>
											<label for="landingPageId">LandingPageId</label>
											<input type="text" id="landingPageId" name="landingPageId" size="40" value="<strapi:landingPagesDomainTeamsLinksLandingPageId />">
											<br>

											<label for="domainTeamId">DomainTeamId</label>
											<input type="text" id="domainTeamId" name="domainTeamId" size="40" value="<strapi:landingPagesDomainTeamsLinksDomainTeamId />">
											<br>

											<label for="domainTeamOrder">DomainTeamOrder</label>
											<input type="text" id="domainTeamOrder" name="domainTeamOrder" size="40" value="<strapi:landingPagesDomainTeamsLinksDomainTeamOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:landingPagesDomainTeamsLinks>
                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${param.submit eq 'Cancel'}">
		<c:redirect url="list.jsp" />
	</c:when>
	<c:when test="${param.submit eq 'Save'}">
		<fmt:parseNumber var="ID" value="${param.ID}" />
		<fmt:parseNumber var="landingPageId" value="${param.landingPageId}" />
		<fmt:parseNumber var="domainTeamId" value="${param.domainTeamId}" />
		<strapi:landingPagesDomainTeamsLinks ID="${ID}">
			<strapi:landingPagesDomainTeamsLinksLandingPageId landingPageId = "${param.landingPageId}" />
			<strapi:landingPagesDomainTeamsLinksDomainTeamId domainTeamId = "${param.domainTeamId}" />
			<strapi:landingPagesDomainTeamsLinksDomainTeamOrder domainTeamOrder = "${param.domainTeamOrder}" />
		</strapi:landingPagesDomainTeamsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>