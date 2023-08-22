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
								<strapi:researcherEssentialsAccessBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ResearcherEssentialsAccessBlockLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="ResearcherEssentials">ResearcherEssentials</label>
											<br>
												<strapi:foreachResearcherEssentials var="researcherEssentialsIter">
													<strapi:researcherEssentials>
													<input type="radio" name="ID" value="<strapi:researcherEssentialsID />"><label for="ID"><strapi:researcherEssentialsID /></label>
													<br>
													</strapi:researcherEssentials>
												</strapi:foreachResearcherEssentials>
											<label for="researcherEssentialId">ResearcherEssentialId</label>
											<input type="text" id="researcherEssentialId" name="researcherEssentialId" size="40" value="<strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:researcherEssentialsAccessBlockLinks>
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
								<strapi:researcherEssentialsAccessBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ResearcherEssentialsAccessBlockLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="ResearcherEssentials">ResearcherEssentials</label>
											<br>
												<strapi:foreachResearcherEssentials var="researcherEssentialsIter">
													<strapi:researcherEssentials>
													<input type="radio" name="ID" value="<strapi:researcherEssentialsID />"><label for="ID"><strapi:researcherEssentialsID /></label>
													<br>
													</strapi:researcherEssentials>
												</strapi:foreachResearcherEssentials>
											<label for="researcherEssentialId">ResearcherEssentialId</label>
											<input type="text" id="researcherEssentialId" name="researcherEssentialId" size="40" value="<strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:researcherEssentialsAccessBlockLinks>
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
		<fmt:parseNumber var="researcherEssentialId" value="${param.researcherEssentialId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:researcherEssentialsAccessBlockLinks ID="${ID}">
			<strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId researcherEssentialId = "${param.researcherEssentialId}" />
			<strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
		</strapi:researcherEssentialsAccessBlockLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>