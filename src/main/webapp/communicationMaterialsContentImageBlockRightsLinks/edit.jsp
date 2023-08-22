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
								<strapi:communicationMaterialsContentImageBlockRightsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>CommunicationMaterialsContentImageBlockRightsLinks</legend>
											<label for="CommunicationMaterials">CommunicationMaterials</label>
											<br>
												<strapi:foreachCommunicationMaterials var="communicationMaterialsIter">
													<strapi:communicationMaterials>
													<input type="radio" name="ID" value="<strapi:communicationMaterialsID />"><label for="ID"><strapi:communicationMaterialsID /></label>
													<br>
													</strapi:communicationMaterials>
												</strapi:foreachCommunicationMaterials>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="communicationMaterialId">CommunicationMaterialId</label>
											<input type="text" id="communicationMaterialId" name="communicationMaterialId" size="40" value="<strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:communicationMaterialsContentImageBlockRightsLinks>
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
								<strapi:communicationMaterialsContentImageBlockRightsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>CommunicationMaterialsContentImageBlockRightsLinks</legend>
											<label for="CommunicationMaterials">CommunicationMaterials</label>
											<br>
												<strapi:foreachCommunicationMaterials var="communicationMaterialsIter">
													<strapi:communicationMaterials>
													<input type="radio" name="ID" value="<strapi:communicationMaterialsID />"><label for="ID"><strapi:communicationMaterialsID /></label>
													<br>
													</strapi:communicationMaterials>
												</strapi:foreachCommunicationMaterials>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="communicationMaterialId">CommunicationMaterialId</label>
											<input type="text" id="communicationMaterialId" name="communicationMaterialId" size="40" value="<strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:communicationMaterialsContentImageBlockRightsLinks>
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
		<fmt:parseNumber var="communicationMaterialId" value="${param.communicationMaterialId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:communicationMaterialsContentImageBlockRightsLinks ID="${ID}">
			<strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId communicationMaterialId = "${param.communicationMaterialId}" />
			<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
			<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder contentImageBlockRightOrder = "${param.contentImageBlockRightOrder}" />
		</strapi:communicationMaterialsContentImageBlockRightsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>