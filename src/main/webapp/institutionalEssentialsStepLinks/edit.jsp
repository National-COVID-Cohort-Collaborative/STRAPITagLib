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
								<strapi:institutionalEssentialsStepLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>InstitutionalEssentialsStepLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="InstitutionalEssentials">InstitutionalEssentials</label>
											<br>
												<strapi:foreachInstitutionalEssentials var="institutionalEssentialsIter">
													<strapi:institutionalEssentials>
													<input type="radio" name="ID" value="<strapi:institutionalEssentialsID />"><label for="ID"><strapi:institutionalEssentialsID /></label>
													<br>
													</strapi:institutionalEssentials>
												</strapi:foreachInstitutionalEssentials>
											<label for="institutionalEssentialId">InstitutionalEssentialId</label>
											<input type="text" id="institutionalEssentialId" name="institutionalEssentialId" size="40" value="<strapi:institutionalEssentialsStepLinksInstitutionalEssentialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:institutionalEssentialsStepLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:institutionalEssentialsStepLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:institutionalEssentialsStepLinks>
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
								<strapi:institutionalEssentialsStepLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>InstitutionalEssentialsStepLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="InstitutionalEssentials">InstitutionalEssentials</label>
											<br>
												<strapi:foreachInstitutionalEssentials var="institutionalEssentialsIter">
													<strapi:institutionalEssentials>
													<input type="radio" name="ID" value="<strapi:institutionalEssentialsID />"><label for="ID"><strapi:institutionalEssentialsID /></label>
													<br>
													</strapi:institutionalEssentials>
												</strapi:foreachInstitutionalEssentials>
											<label for="institutionalEssentialId">InstitutionalEssentialId</label>
											<input type="text" id="institutionalEssentialId" name="institutionalEssentialId" size="40" value="<strapi:institutionalEssentialsStepLinksInstitutionalEssentialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:institutionalEssentialsStepLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:institutionalEssentialsStepLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:institutionalEssentialsStepLinks>
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
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:institutionalEssentialsStepLinks ID="${ID}">
			<strapi:institutionalEssentialsStepLinksInstitutionalEssentialId institutionalEssentialId = "${param.institutionalEssentialId}" />
			<strapi:institutionalEssentialsStepLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
			<strapi:institutionalEssentialsStepLinksContentImageBlockRightOrder contentImageBlockRightOrder = "${param.contentImageBlockRightOrder}" />
		</strapi:institutionalEssentialsStepLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>