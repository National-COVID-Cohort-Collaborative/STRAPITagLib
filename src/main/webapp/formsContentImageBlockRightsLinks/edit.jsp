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
								<strapi:formsContentImageBlockRightsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>FormsContentImageBlockRightsLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="Forms">Forms</label>
											<br>
												<strapi:foreachForms var="formsIter">
													<strapi:forms>
													<input type="radio" name="ID" value="<strapi:formsID />"><label for="ID"><strapi:formsID /></label>
													<br>
													</strapi:forms>
												</strapi:foreachForms>
											<label for="formId">FormId</label>
											<input type="text" id="formId" name="formId" size="40" value="<strapi:formsContentImageBlockRightsLinksFormId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:formsContentImageBlockRightsLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:formsContentImageBlockRightsLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:formsContentImageBlockRightsLinks>
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
								<strapi:formsContentImageBlockRightsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>FormsContentImageBlockRightsLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="Forms">Forms</label>
											<br>
												<strapi:foreachForms var="formsIter">
													<strapi:forms>
													<input type="radio" name="ID" value="<strapi:formsID />"><label for="ID"><strapi:formsID /></label>
													<br>
													</strapi:forms>
												</strapi:foreachForms>
											<label for="formId">FormId</label>
											<input type="text" id="formId" name="formId" size="40" value="<strapi:formsContentImageBlockRightsLinksFormId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:formsContentImageBlockRightsLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:formsContentImageBlockRightsLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:formsContentImageBlockRightsLinks>
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
		<fmt:parseNumber var="formId" value="${param.formId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:formsContentImageBlockRightsLinks ID="${ID}">
			<strapi:formsContentImageBlockRightsLinksFormId formId = "${param.formId}" />
			<strapi:formsContentImageBlockRightsLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
			<strapi:formsContentImageBlockRightsLinksContentImageBlockRightOrder contentImageBlockRightOrder = "${param.contentImageBlockRightOrder}" />
		</strapi:formsContentImageBlockRightsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>