<%@ include file="../../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit and not empty param.ID}">
        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>WorkstreamInstancesNavTilesLinks</legend>
										<label for="WorkstreamInstances">WorkstreamInstances</label>
										<br>
											<strapi:foreachWorkstreamInstances var="workstreamInstancesIter">
												<strapi:workstreamInstances>
												<input type="radio" name="ID" value="<strapi:workstreamInstancesID />"><label for="ID"><strapi:workstreamInstancesID /></label>
												<br>
												</strapi:workstreamInstances>
											</strapi:foreachWorkstreamInstances>
										<label for="workstreamInstanceId">WorkstreamInstanceId</label>
										<input type="text" id="workstreamInstanceId" name="workstreamInstanceId" size="40" value="">
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
                <jsp:include page="../../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${empty param.submit and not empty param.ID}">
        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>WorkstreamInstancesNavTilesLinks</legend>
										<label for="NavTiles">NavTiles</label>
										<br>
											<strapi:foreachNavTiles var="navTilesIter">
												<strapi:navTiles>
												<input type="radio" name="ID" value="<strapi:navTilesID />"><label for="ID"><strapi:navTilesID /></label>
												<br>
												</strapi:navTiles>
											</strapi:foreachNavTiles>
										<label for="workstreamInstanceId">WorkstreamInstanceId</label>
										<input type="text" id="workstreamInstanceId" name="workstreamInstanceId" size="40" value="">
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
                <jsp:include page="../../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${param.submit eq 'Cancel'}">
		<c:redirect url="list.jsp" />
	</c:when>
	<c:when test="${param.submit eq 'Save'}">
		<strapi:navTiles ID = "${param.ID}">
		<strapi:workstreamInstances ID = "${param.ID}">
			<strapi:workstreamInstancesNavTilesLinks>
				<strapi:workstreamInstancesNavTilesLinksWorkstreamInstanceId workstreamInstanceId = "${param.workstreamInstanceId}" />
				<strapi:workstreamInstancesNavTilesLinksNavTileId navTileId = "${param.navTileId}" />
				<strapi:workstreamInstancesNavTilesLinksNavTileOrder navTileOrder = "${param.navTileOrder}" />
			</strapi:workstreamInstancesNavTilesLinks>
		</strapi:workstreamInstances>
		</strapi:navTiles>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>