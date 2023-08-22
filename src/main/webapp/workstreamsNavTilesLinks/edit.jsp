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
								<strapi:workstreamsNavTilesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamsNavTilesLinks</legend>
											<label for="NavTiles">NavTiles</label>
											<br>
												<strapi:foreachNavTiles var="navTilesIter">
													<strapi:navTiles>
													<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
													<br>
													</strapi:navTiles>
												</strapi:foreachNavTiles>
											<label for="Workstreams">Workstreams</label>
											<br>
												<strapi:foreachWorkstreams var="workstreamsIter">
													<strapi:workstreams>
													<input type="radio" name="ID" value="<strapi:workstreamsID />"><label for="ID"><strapi:workstreamsID /></label>
													<br>
													</strapi:workstreams>
												</strapi:foreachWorkstreams>
											<label for="workstreamId">WorkstreamId</label>
											<input type="text" id="workstreamId" name="workstreamId" size="40" value="<strapi:workstreamsNavTilesLinksWorkstreamId />">
											<br>

											<label for="navTileId">NavTileId</label>
											<input type="text" id="navTileId" name="navTileId" size="40" value="<strapi:workstreamsNavTilesLinksNavTileId />">
											<br>

											<label for="navTileOrder">NavTileOrder</label>
											<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="<strapi:workstreamsNavTilesLinksNavTileOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamsNavTilesLinks>
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
								<strapi:workstreamsNavTilesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamsNavTilesLinks</legend>
											<label for="NavTiles">NavTiles</label>
											<br>
												<strapi:foreachNavTiles var="navTilesIter">
													<strapi:navTiles>
													<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
													<br>
													</strapi:navTiles>
												</strapi:foreachNavTiles>
											<label for="Workstreams">Workstreams</label>
											<br>
												<strapi:foreachWorkstreams var="workstreamsIter">
													<strapi:workstreams>
													<input type="radio" name="ID" value="<strapi:workstreamsID />"><label for="ID"><strapi:workstreamsID /></label>
													<br>
													</strapi:workstreams>
												</strapi:foreachWorkstreams>
											<label for="workstreamId">WorkstreamId</label>
											<input type="text" id="workstreamId" name="workstreamId" size="40" value="<strapi:workstreamsNavTilesLinksWorkstreamId />">
											<br>

											<label for="navTileId">NavTileId</label>
											<input type="text" id="navTileId" name="navTileId" size="40" value="<strapi:workstreamsNavTilesLinksNavTileId />">
											<br>

											<label for="navTileOrder">NavTileOrder</label>
											<input type="text" id="navTileOrder" name="navTileOrder" size="40" value="<strapi:workstreamsNavTilesLinksNavTileOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamsNavTilesLinks>
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
		<fmt:parseNumber var="workstreamId" value="${param.workstreamId}" />
		<fmt:parseNumber var="navTileId" value="${param.navTileId}" />
		<strapi:workstreamsNavTilesLinks ID="${ID}">
			<strapi:workstreamsNavTilesLinksWorkstreamId workstreamId = "${param.workstreamId}" />
			<strapi:workstreamsNavTilesLinksNavTileId navTileId = "${param.navTileId}" />
			<strapi:workstreamsNavTilesLinksNavTileOrder navTileOrder = "${param.navTileOrder}" />
		</strapi:workstreamsNavTilesLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>