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
								<strapi:accountCreationsIntroLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>AccountCreationsIntroLinks</legend>
											<label for="AccountCreations">AccountCreations</label>
											<br>
												<strapi:foreachAccountCreations var="accountCreationsIter">
													<strapi:accountCreations>
													<input type="radio" name="ID" value="<strapi:accountCreationsID />"><label for="ID"><strapi:accountCreationsID /></label>
													<br>
													</strapi:accountCreations>
												</strapi:foreachAccountCreations>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="accountCreationId">AccountCreationId</label>
											<input type="text" id="accountCreationId" name="accountCreationId" size="40" value="<strapi:accountCreationsIntroLinksAccountCreationId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:accountCreationsIntroLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:accountCreationsIntroLinks>
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
								<strapi:accountCreationsIntroLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>AccountCreationsIntroLinks</legend>
											<label for="AccountCreations">AccountCreations</label>
											<br>
												<strapi:foreachAccountCreations var="accountCreationsIter">
													<strapi:accountCreations>
													<input type="radio" name="ID" value="<strapi:accountCreationsID />"><label for="ID"><strapi:accountCreationsID /></label>
													<br>
													</strapi:accountCreations>
												</strapi:foreachAccountCreations>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="accountCreationId">AccountCreationId</label>
											<input type="text" id="accountCreationId" name="accountCreationId" size="40" value="<strapi:accountCreationsIntroLinksAccountCreationId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:accountCreationsIntroLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:accountCreationsIntroLinks>
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
		<fmt:parseNumber var="accountCreationId" value="${param.accountCreationId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:accountCreationsIntroLinks ID="${ID}">
			<strapi:accountCreationsIntroLinksAccountCreationId accountCreationId = "${param.accountCreationId}" />
			<strapi:accountCreationsIntroLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
		</strapi:accountCreationsIntroLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>