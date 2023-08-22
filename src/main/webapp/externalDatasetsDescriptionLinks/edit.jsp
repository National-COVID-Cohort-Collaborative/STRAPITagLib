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
								<strapi:externalDatasetsDescriptionLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ExternalDatasetsDescriptionLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="ExternalDatasets">ExternalDatasets</label>
											<br>
												<strapi:foreachExternalDatasets var="externalDatasetsIter">
													<strapi:externalDatasets>
													<input type="radio" name="ID" value="<strapi:externalDatasetsID />"><label for="ID"><strapi:externalDatasetsID /></label>
													<br>
													</strapi:externalDatasets>
												</strapi:foreachExternalDatasets>
											<label for="externalDatasetId">ExternalDatasetId</label>
											<input type="text" id="externalDatasetId" name="externalDatasetId" size="40" value="<strapi:externalDatasetsDescriptionLinksExternalDatasetId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:externalDatasetsDescriptionLinks>
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
								<strapi:externalDatasetsDescriptionLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ExternalDatasetsDescriptionLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="ExternalDatasets">ExternalDatasets</label>
											<br>
												<strapi:foreachExternalDatasets var="externalDatasetsIter">
													<strapi:externalDatasets>
													<input type="radio" name="ID" value="<strapi:externalDatasetsID />"><label for="ID"><strapi:externalDatasetsID /></label>
													<br>
													</strapi:externalDatasets>
												</strapi:foreachExternalDatasets>
											<label for="externalDatasetId">ExternalDatasetId</label>
											<input type="text" id="externalDatasetId" name="externalDatasetId" size="40" value="<strapi:externalDatasetsDescriptionLinksExternalDatasetId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:externalDatasetsDescriptionLinks>
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
		<fmt:parseNumber var="contentImageBlockLeftId" value="${param.contentImageBlockLeftId}" />
		<strapi:externalDatasetsDescriptionLinks ID="${ID}">
			<strapi:externalDatasetsDescriptionLinksExternalDatasetId externalDatasetId = "${param.externalDatasetId}" />
			<strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId contentImageBlockLeftId = "${param.contentImageBlockLeftId}" />
		</strapi:externalDatasetsDescriptionLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>