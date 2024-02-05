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
								<strapi:tenantInstitutionalEssentialsStepLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantInstitutionalEssentialsStepLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="TenantInstitutionalEssentials">TenantInstitutionalEssentials</label>
											<br>
												<strapi:foreachTenantInstitutionalEssentials var="tenantInstitutionalEssentialsIter">
													<strapi:tenantInstitutionalEssentials>
													<input type="radio" name="ID" value="<strapi:tenantInstitutionalEssentialsID />"><label for="ID"><strapi:tenantInstitutionalEssentialsID /></label>
													<br>
													</strapi:tenantInstitutionalEssentials>
												</strapi:foreachTenantInstitutionalEssentials>
											<label for="tenantInstitutionalEssentialId">TenantInstitutionalEssentialId</label>
											<input type="text" id="tenantInstitutionalEssentialId" name="tenantInstitutionalEssentialId" size="40" value="<strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantInstitutionalEssentialsStepLinks>
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
								<strapi:tenantInstitutionalEssentialsStepLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantInstitutionalEssentialsStepLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="TenantInstitutionalEssentials">TenantInstitutionalEssentials</label>
											<br>
												<strapi:foreachTenantInstitutionalEssentials var="tenantInstitutionalEssentialsIter">
													<strapi:tenantInstitutionalEssentials>
													<input type="radio" name="ID" value="<strapi:tenantInstitutionalEssentialsID />"><label for="ID"><strapi:tenantInstitutionalEssentialsID /></label>
													<br>
													</strapi:tenantInstitutionalEssentials>
												</strapi:foreachTenantInstitutionalEssentials>
											<label for="tenantInstitutionalEssentialId">TenantInstitutionalEssentialId</label>
											<input type="text" id="tenantInstitutionalEssentialId" name="tenantInstitutionalEssentialId" size="40" value="<strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantInstitutionalEssentialsStepLinks>
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
		<fmt:parseNumber var="tenantInstitutionalEssentialId" value="${param.tenantInstitutionalEssentialId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:tenantInstitutionalEssentialsStepLinks ID="${ID}">
			<strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId tenantInstitutionalEssentialId = "${param.tenantInstitutionalEssentialId}" />
			<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
			<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder contentImageBlockRightOrder = "${param.contentImageBlockRightOrder}" />
		</strapi:tenantInstitutionalEssentialsStepLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>