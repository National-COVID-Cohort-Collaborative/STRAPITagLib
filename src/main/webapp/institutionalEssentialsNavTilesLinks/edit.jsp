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
								<strapi:institutionalEssentialsNavTilesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>InstitutionalEssentialsNavTilesLinks</legend>
											<label for="InstitutionalEssentials">InstitutionalEssentials</label>
											<br>
												<strapi:foreachInstitutionalEssentials var="institutionalEssentialsIter">
													<strapi:institutionalEssentials>
													<input type="radio" name="ID" value="<strapi:institutionalEssentialsID />"><label for="ID"><strapi:institutionalEssentialsID /></label>
													<br>
													</strapi:institutionalEssentials>
												</strapi:foreachInstitutionalEssentials>
											<label for="NavTiles">NavTiles</label>
											<br>
												<strapi:foreachNavTiles var="navTilesIter">
													<strapi:navTiles>
													<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
													<br>
													</strapi:navTiles>
												</strapi:foreachNavTiles>
											<label for="institutionalEssentialId">InstitutionalEssentialId</label>
											<input type="text" id="institutionalEssentialId" name="institutionalEssentialId" size="40" value="<strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId />">
											<br>

											<label for="navTileId">NavTileId</label>
											<input type="text" id="navTileId" name="navTileId" size="40" value="<strapi:institutionalEssentialsNavTilesLinksNavTileId />">
											<br>

											<label for="navTileOrder">NavTileOrder</label>
											<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="<strapi:institutionalEssentialsNavTilesLinksNavTileOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:institutionalEssentialsNavTilesLinks>
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
								<strapi:institutionalEssentialsNavTilesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>InstitutionalEssentialsNavTilesLinks</legend>
											<label for="InstitutionalEssentials">InstitutionalEssentials</label>
											<br>
												<strapi:foreachInstitutionalEssentials var="institutionalEssentialsIter">
													<strapi:institutionalEssentials>
													<input type="radio" name="ID" value="<strapi:institutionalEssentialsID />"><label for="ID"><strapi:institutionalEssentialsID /></label>
													<br>
													</strapi:institutionalEssentials>
												</strapi:foreachInstitutionalEssentials>
											<label for="NavTiles">NavTiles</label>
											<br>
												<strapi:foreachNavTiles var="navTilesIter">
													<strapi:navTiles>
													<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
													<br>
													</strapi:navTiles>
												</strapi:foreachNavTiles>
											<label for="institutionalEssentialId">InstitutionalEssentialId</label>
											<input type="text" id="institutionalEssentialId" name="institutionalEssentialId" size="40" value="<strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId />">
											<br>

											<label for="navTileId">NavTileId</label>
											<input type="text" id="navTileId" name="navTileId" size="40" value="<strapi:institutionalEssentialsNavTilesLinksNavTileId />">
											<br>

											<label for="navTileOrder">NavTileOrder</label>
											<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="<strapi:institutionalEssentialsNavTilesLinksNavTileOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:institutionalEssentialsNavTilesLinks>
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
		<fmt:parseNumber var="institutionalEssentialId" value="${param.institutionalEssentialId}" />
		<fmt:parseNumber var="navTileId" value="${param.navTileId}" />
		<strapi:institutionalEssentialsNavTilesLinks ID="${ID}">
			<strapi:institutionalEssentialsNavTilesLinksInstitutionalEssentialId institutionalEssentialId = "${param.institutionalEssentialId}" />
			<strapi:institutionalEssentialsNavTilesLinksNavTileId navTileId = "${param.navTileId}" />
			<strapi:institutionalEssentialsNavTilesLinksNavTileOrder navTileOrder = "${param.navTileOrder}" />
		</strapi:institutionalEssentialsNavTilesLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>