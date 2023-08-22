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
										<legend>CommunicationMaterialsContentImageBlockRightsLinks</legend>
										<label for="ContentImageBlockRights">ContentImageBlockRights</label>
										<br>
											<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
												<strapi:contentImageBlockRights>
												<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
												<br>
												</strapi:contentImageBlockRights>
											</strapi:foreachContentImageBlockRights>
										<label for="communicationMaterialId">CommunicationMaterialId</label>
										<input type="text" id="communicationMaterialId" name="communicationMaterialId" size="40" value="">
										<br>

										<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
										<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="">
										<br>

										<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
										<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="">
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
										<legend>CommunicationMaterialsContentImageBlockRightsLinks</legend>
										<label for="CommunicationMaterials">CommunicationMaterials</label>
										<br>
											<strapi:foreachCommunicationMaterials var="communicationMaterialsIter">
												<strapi:communicationMaterials>
												<input type="radio" name="ID" value="<strapi:communicationMaterialsID />"><label for="ID"><strapi:communicationMaterialsID /></label>
												<br>
												</strapi:communicationMaterials>
											</strapi:foreachCommunicationMaterials>
										<label for="communicationMaterialId">CommunicationMaterialId</label>
										<input type="text" id="communicationMaterialId" name="communicationMaterialId" size="40" value="">
										<br>

										<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
										<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="">
										<br>

										<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
										<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="">
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
		<strapi:communicationMaterials ID = "${param.ID}">
		<strapi:contentImageBlockRights ID = "${param.ID}">
			<strapi:communicationMaterialsContentImageBlockRightsLinks>
				<strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId communicationMaterialId = "${param.communicationMaterialId}" />
				<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
				<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder contentImageBlockRightOrder = "${param.contentImageBlockRightOrder}" />
			</strapi:communicationMaterialsContentImageBlockRightsLinks>
		</strapi:contentImageBlockRights>
		</strapi:communicationMaterials>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>