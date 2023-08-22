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
								<strapi:onboardingsNavTilesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>OnboardingsNavTilesLinks</legend>
											<label for="NavTiles">NavTiles</label>
											<br>
												<strapi:foreachNavTiles var="navTilesIter">
													<strapi:navTiles>
													<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
													<br>
													</strapi:navTiles>
												</strapi:foreachNavTiles>
											<label for="Onboardings">Onboardings</label>
											<br>
												<strapi:foreachOnboardings var="onboardingsIter">
													<strapi:onboardings>
													<input type="radio" name="ID" value="<strapi:onboardingsID />"><label for="ID"><strapi:onboardingsID /></label>
													<br>
													</strapi:onboardings>
												</strapi:foreachOnboardings>
											<label for="onboardingId">OnboardingId</label>
											<input type="text" id="onboardingId" name="onboardingId" size="40" value="<strapi:onboardingsNavTilesLinksOnboardingId />">
											<br>

											<label for="navTileId">NavTileId</label>
											<input type="text" id="navTileId" name="navTileId" size="40" value="<strapi:onboardingsNavTilesLinksNavTileId />">
											<br>

											<label for="navTileOrder">NavTileOrder</label>
											<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="<strapi:onboardingsNavTilesLinksNavTileOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:onboardingsNavTilesLinks>
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
								<strapi:onboardingsNavTilesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>OnboardingsNavTilesLinks</legend>
											<label for="NavTiles">NavTiles</label>
											<br>
												<strapi:foreachNavTiles var="navTilesIter">
													<strapi:navTiles>
													<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
													<br>
													</strapi:navTiles>
												</strapi:foreachNavTiles>
											<label for="Onboardings">Onboardings</label>
											<br>
												<strapi:foreachOnboardings var="onboardingsIter">
													<strapi:onboardings>
													<input type="radio" name="ID" value="<strapi:onboardingsID />"><label for="ID"><strapi:onboardingsID /></label>
													<br>
													</strapi:onboardings>
												</strapi:foreachOnboardings>
											<label for="onboardingId">OnboardingId</label>
											<input type="text" id="onboardingId" name="onboardingId" size="40" value="<strapi:onboardingsNavTilesLinksOnboardingId />">
											<br>

											<label for="navTileId">NavTileId</label>
											<input type="text" id="navTileId" name="navTileId" size="40" value="<strapi:onboardingsNavTilesLinksNavTileId />">
											<br>

											<label for="navTileOrder">NavTileOrder</label>
											<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="<strapi:onboardingsNavTilesLinksNavTileOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:onboardingsNavTilesLinks>
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
		<fmt:parseNumber var="onboardingId" value="${param.onboardingId}" />
		<fmt:parseNumber var="navTileId" value="${param.navTileId}" />
		<strapi:onboardingsNavTilesLinks ID="${ID}">
			<strapi:onboardingsNavTilesLinksOnboardingId onboardingId = "${param.onboardingId}" />
			<strapi:onboardingsNavTilesLinksNavTileId navTileId = "${param.navTileId}" />
			<strapi:onboardingsNavTilesLinksNavTileOrder navTileOrder = "${param.navTileOrder}" />
		</strapi:onboardingsNavTilesLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>