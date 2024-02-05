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
								<strapi:tenantResearcherEssentialsAccessBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantResearcherEssentialsAccessBlockLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="TenantResearcherEssentials">TenantResearcherEssentials</label>
											<br>
												<strapi:foreachTenantResearcherEssentials var="tenantResearcherEssentialsIter">
													<strapi:tenantResearcherEssentials>
													<input type="radio" name="ID" value="<strapi:tenantResearcherEssentialsID />"><label for="ID"><strapi:tenantResearcherEssentialsID /></label>
													<br>
													</strapi:tenantResearcherEssentials>
												</strapi:foreachTenantResearcherEssentials>
											<label for="tenantResearcherEssentialId">TenantResearcherEssentialId</label>
											<input type="text" id="tenantResearcherEssentialId" name="tenantResearcherEssentialId" size="40" value="<strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantResearcherEssentialsAccessBlockLinks>
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
								<strapi:tenantResearcherEssentialsAccessBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantResearcherEssentialsAccessBlockLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="TenantResearcherEssentials">TenantResearcherEssentials</label>
											<br>
												<strapi:foreachTenantResearcherEssentials var="tenantResearcherEssentialsIter">
													<strapi:tenantResearcherEssentials>
													<input type="radio" name="ID" value="<strapi:tenantResearcherEssentialsID />"><label for="ID"><strapi:tenantResearcherEssentialsID /></label>
													<br>
													</strapi:tenantResearcherEssentials>
												</strapi:foreachTenantResearcherEssentials>
											<label for="tenantResearcherEssentialId">TenantResearcherEssentialId</label>
											<input type="text" id="tenantResearcherEssentialId" name="tenantResearcherEssentialId" size="40" value="<strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantResearcherEssentialsAccessBlockLinks>
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
		<fmt:parseNumber var="tenantResearcherEssentialId" value="${param.tenantResearcherEssentialId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:tenantResearcherEssentialsAccessBlockLinks ID="${ID}">
			<strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId tenantResearcherEssentialId = "${param.tenantResearcherEssentialId}" />
			<strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
		</strapi:tenantResearcherEssentialsAccessBlockLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>