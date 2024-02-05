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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>TenantInstitutionalEssentialsNavTilesLinks</legend>
										<label for="TenantInstitutionalEssentials">TenantInstitutionalEssentials</label>
										<br>
											<strapi:foreachTenantInstitutionalEssentials var="tenantInstitutionalEssentialsIter">
												<strapi:tenantInstitutionalEssentials>
												<input type="radio" name="ID" value="<strapi:tenantInstitutionalEssentialsID />"><label for="ID"><strapi:tenantInstitutionalEssentialsID /></label>
												<br>
												</strapi:tenantInstitutionalEssentials>
											</strapi:foreachTenantInstitutionalEssentials>
										<label for="tenantInstitutionalEssentialId">TenantInstitutionalEssentialId</label>
										<input type="text" id="tenantInstitutionalEssentialId" name="tenantInstitutionalEssentialId" size="40" value="">
										<br>

										<label for="navTileId">NavTileId</label>
										<input type="text" id="navTileId" name="navTileId" size="40" value="">
										<br>

										<label for="navTileOrder">NavTileOrder</label>
										<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
										<input type="hidden" name="ID" value="${param.ID}">
									</fieldset>
								</form>
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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>TenantInstitutionalEssentialsNavTilesLinks</legend>
										<label for="NavTiles">NavTiles</label>
										<br>
											<strapi:foreachNavTiles var="navTilesIter">
												<strapi:navTiles>
												<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
												<br>
												</strapi:navTiles>
											</strapi:foreachNavTiles>
										<label for="tenantInstitutionalEssentialId">TenantInstitutionalEssentialId</label>
										<input type="text" id="tenantInstitutionalEssentialId" name="tenantInstitutionalEssentialId" size="40" value="">
										<br>

										<label for="navTileId">NavTileId</label>
										<input type="text" id="navTileId" name="navTileId" size="40" value="">
										<br>

										<label for="navTileOrder">NavTileOrder</label>
										<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
										<input type="hidden" name="ID" value="${param.ID}">
									</fieldset>
								</form>
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
		<strapi:navTiles ID = "${param.ID}">
		<strapi:tenantInstitutionalEssentials ID = "${param.ID}">
			<strapi:tenantInstitutionalEssentialsNavTilesLinks>
				<strapi:tenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId tenantInstitutionalEssentialId = "${param.tenantInstitutionalEssentialId}" />
				<strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileId navTileId = "${param.navTileId}" />
				<strapi:tenantInstitutionalEssentialsNavTilesLinksNavTileOrder navTileOrder = "${param.navTileOrder}" />
			</strapi:tenantInstitutionalEssentialsNavTilesLinks>
		</strapi:tenantInstitutionalEssentials>
		</strapi:navTiles>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>