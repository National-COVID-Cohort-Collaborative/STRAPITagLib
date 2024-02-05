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
								<strapi:tenantResearcherEssentialsNavTilesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantResearcherEssentialsNavTilesLinks</legend>
											<label for="NavTiles">NavTiles</label>
											<br>
												<strapi:foreachNavTiles var="navTilesIter">
													<strapi:navTiles>
													<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
													<br>
													</strapi:navTiles>
												</strapi:foreachNavTiles>
											<label for="TenantResearcherEssentials">TenantResearcherEssentials</label>
											<br>
												<strapi:foreachTenantResearcherEssentials var="tenantResearcherEssentialsIter">
													<strapi:tenantResearcherEssentials>
													<input type="radio" name="ID" value="<strapi:tenantResearcherEssentialsID />"><label for="ID"><strapi:tenantResearcherEssentialsID /></label>
													<br>
													</strapi:tenantResearcherEssentials>
												</strapi:foreachTenantResearcherEssentials>
											<label for="tenantResearcherEssentialId">TenantResearcherEssentialId</label>
											<input type="text" id="tenantResearcherEssentialId" name="tenantResearcherEssentialId" size="40" value="<strapi:tenantResearcherEssentialsNavTilesLinksTenantResearcherEssentialId />">
											<br>

											<label for="navTileId">NavTileId</label>
											<input type="text" id="navTileId" name="navTileId" size="40" value="<strapi:tenantResearcherEssentialsNavTilesLinksNavTileId />">
											<br>

											<label for="navTileOrder">NavTileOrder</label>
											<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="<strapi:tenantResearcherEssentialsNavTilesLinksNavTileOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantResearcherEssentialsNavTilesLinks>
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
								<strapi:tenantResearcherEssentialsNavTilesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantResearcherEssentialsNavTilesLinks</legend>
											<label for="NavTiles">NavTiles</label>
											<br>
												<strapi:foreachNavTiles var="navTilesIter">
													<strapi:navTiles>
													<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
													<br>
													</strapi:navTiles>
												</strapi:foreachNavTiles>
											<label for="TenantResearcherEssentials">TenantResearcherEssentials</label>
											<br>
												<strapi:foreachTenantResearcherEssentials var="tenantResearcherEssentialsIter">
													<strapi:tenantResearcherEssentials>
													<input type="radio" name="ID" value="<strapi:tenantResearcherEssentialsID />"><label for="ID"><strapi:tenantResearcherEssentialsID /></label>
													<br>
													</strapi:tenantResearcherEssentials>
												</strapi:foreachTenantResearcherEssentials>
											<label for="tenantResearcherEssentialId">TenantResearcherEssentialId</label>
											<input type="text" id="tenantResearcherEssentialId" name="tenantResearcherEssentialId" size="40" value="<strapi:tenantResearcherEssentialsNavTilesLinksTenantResearcherEssentialId />">
											<br>

											<label for="navTileId">NavTileId</label>
											<input type="text" id="navTileId" name="navTileId" size="40" value="<strapi:tenantResearcherEssentialsNavTilesLinksNavTileId />">
											<br>

											<label for="navTileOrder">NavTileOrder</label>
											<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="<strapi:tenantResearcherEssentialsNavTilesLinksNavTileOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantResearcherEssentialsNavTilesLinks>
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
		<fmt:parseNumber var="tenantResearcherEssentialId" value="${param.tenantResearcherEssentialId}" />
		<fmt:parseNumber var="navTileId" value="${param.navTileId}" />
		<strapi:tenantResearcherEssentialsNavTilesLinks ID="${ID}">
			<strapi:tenantResearcherEssentialsNavTilesLinksTenantResearcherEssentialId tenantResearcherEssentialId = "${param.tenantResearcherEssentialId}" />
			<strapi:tenantResearcherEssentialsNavTilesLinksNavTileId navTileId = "${param.navTileId}" />
			<strapi:tenantResearcherEssentialsNavTilesLinksNavTileOrder navTileOrder = "${param.navTileOrder}" />
		</strapi:tenantResearcherEssentialsNavTilesLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>