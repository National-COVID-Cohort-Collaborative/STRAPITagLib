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
								<strapi:onboardingsStepLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>OnboardingsStepLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="Onboardings">Onboardings</label>
											<br>
												<strapi:foreachOnboardings var="onboardingsIter">
													<strapi:onboardings>
													<input type="radio" name="ID" value="<strapi:onboardingsID />"><label for="ID"><strapi:onboardingsID /></label>
													<br>
													</strapi:onboardings>
												</strapi:foreachOnboardings>
											<label for="onboardingId">OnboardingId</label>
											<input type="text" id="onboardingId" name="onboardingId" size="40" value="<strapi:onboardingsStepLinksOnboardingId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:onboardingsStepLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:onboardingsStepLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:onboardingsStepLinks>
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
								<strapi:onboardingsStepLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>OnboardingsStepLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="Onboardings">Onboardings</label>
											<br>
												<strapi:foreachOnboardings var="onboardingsIter">
													<strapi:onboardings>
													<input type="radio" name="ID" value="<strapi:onboardingsID />"><label for="ID"><strapi:onboardingsID /></label>
													<br>
													</strapi:onboardings>
												</strapi:foreachOnboardings>
											<label for="onboardingId">OnboardingId</label>
											<input type="text" id="onboardingId" name="onboardingId" size="40" value="<strapi:onboardingsStepLinksOnboardingId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:onboardingsStepLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:onboardingsStepLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:onboardingsStepLinks>
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
		<fmt:parseNumber var="onboardingId" value="${param.onboardingId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:onboardingsStepLinks ID="${ID}">
			<strapi:onboardingsStepLinksOnboardingId onboardingId = "${param.onboardingId}" />
			<strapi:onboardingsStepLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
			<strapi:onboardingsStepLinksContentImageBlockRightOrder contentImageBlockRightOrder = "${param.contentImageBlockRightOrder}" />
		</strapi:onboardingsStepLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>