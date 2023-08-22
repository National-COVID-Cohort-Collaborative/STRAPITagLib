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
								<strapi:acknowledgementsContentImageBlockRightsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>AcknowledgementsContentImageBlockRightsLinks</legend>
											<label for="Acknowledgements">Acknowledgements</label>
											<br>
												<strapi:foreachAcknowledgements var="acknowledgementsIter">
													<strapi:acknowledgements>
													<input type="radio" name="ID" value="<strapi:acknowledgementsID />"><label for="ID"><strapi:acknowledgementsID /></label>
													<br>
													</strapi:acknowledgements>
												</strapi:foreachAcknowledgements>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="acknowledgementId">AcknowledgementId</label>
											<input type="text" id="acknowledgementId" name="acknowledgementId" size="40" value="<strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:acknowledgementsContentImageBlockRightsLinks>
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
								<strapi:acknowledgementsContentImageBlockRightsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>AcknowledgementsContentImageBlockRightsLinks</legend>
											<label for="Acknowledgements">Acknowledgements</label>
											<br>
												<strapi:foreachAcknowledgements var="acknowledgementsIter">
													<strapi:acknowledgements>
													<input type="radio" name="ID" value="<strapi:acknowledgementsID />"><label for="ID"><strapi:acknowledgementsID /></label>
													<br>
													</strapi:acknowledgements>
												</strapi:foreachAcknowledgements>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="acknowledgementId">AcknowledgementId</label>
											<input type="text" id="acknowledgementId" name="acknowledgementId" size="40" value="<strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:acknowledgementsContentImageBlockRightsLinks>
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
		<fmt:parseNumber var="acknowledgementId" value="${param.acknowledgementId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:acknowledgementsContentImageBlockRightsLinks ID="${ID}">
			<strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId acknowledgementId = "${param.acknowledgementId}" />
			<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
			<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightOrder contentImageBlockRightOrder = "${param.contentImageBlockRightOrder}" />
		</strapi:acknowledgementsContentImageBlockRightsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>