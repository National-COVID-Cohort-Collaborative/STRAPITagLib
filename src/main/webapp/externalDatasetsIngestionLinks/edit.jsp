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
								<strapi:externalDatasetsIngestionLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ExternalDatasetsIngestionLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="ExternalDatasets">ExternalDatasets</label>
											<br>
												<strapi:foreachExternalDatasets var="externalDatasetsIter">
													<strapi:externalDatasets>
													<input type="radio" name="ID" value="<strapi:externalDatasetsID />"><label for="ID"><strapi:externalDatasetsID /></label>
													<br>
													</strapi:externalDatasets>
												</strapi:foreachExternalDatasets>
											<label for="externalDatasetId">ExternalDatasetId</label>
											<input type="text" id="externalDatasetId" name="externalDatasetId" size="40" value="<strapi:externalDatasetsIngestionLinksExternalDatasetId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:externalDatasetsIngestionLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:externalDatasetsIngestionLinks>
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
								<strapi:externalDatasetsIngestionLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ExternalDatasetsIngestionLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="ExternalDatasets">ExternalDatasets</label>
											<br>
												<strapi:foreachExternalDatasets var="externalDatasetsIter">
													<strapi:externalDatasets>
													<input type="radio" name="ID" value="<strapi:externalDatasetsID />"><label for="ID"><strapi:externalDatasetsID /></label>
													<br>
													</strapi:externalDatasets>
												</strapi:foreachExternalDatasets>
											<label for="externalDatasetId">ExternalDatasetId</label>
											<input type="text" id="externalDatasetId" name="externalDatasetId" size="40" value="<strapi:externalDatasetsIngestionLinksExternalDatasetId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:externalDatasetsIngestionLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:externalDatasetsIngestionLinks>
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
		<fmt:parseNumber var="externalDatasetId" value="${param.externalDatasetId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:externalDatasetsIngestionLinks ID="${ID}">
			<strapi:externalDatasetsIngestionLinksExternalDatasetId externalDatasetId = "${param.externalDatasetId}" />
			<strapi:externalDatasetsIngestionLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
		</strapi:externalDatasetsIngestionLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>