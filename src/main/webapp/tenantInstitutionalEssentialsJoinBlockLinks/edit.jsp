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
								<strapi:tenantInstitutionalEssentialsJoinBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantInstitutionalEssentialsJoinBlockLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="TenantInstitutionalEssentials">TenantInstitutionalEssentials</label>
											<br>
												<strapi:foreachTenantInstitutionalEssentials var="tenantInstitutionalEssentialsIter">
													<strapi:tenantInstitutionalEssentials>
													<input type="radio" name="ID" value="<strapi:tenantInstitutionalEssentialsID />"><label for="ID"><strapi:tenantInstitutionalEssentialsID /></label>
													<br>
													</strapi:tenantInstitutionalEssentials>
												</strapi:foreachTenantInstitutionalEssentials>
											<label for="tenantInstitutionalEssentialId">TenantInstitutionalEssentialId</label>
											<input type="text" id="tenantInstitutionalEssentialId" name="tenantInstitutionalEssentialId" size="40" value="<strapi:tenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:tenantInstitutionalEssentialsJoinBlockLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantInstitutionalEssentialsJoinBlockLinks>
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
								<strapi:tenantInstitutionalEssentialsJoinBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantInstitutionalEssentialsJoinBlockLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="TenantInstitutionalEssentials">TenantInstitutionalEssentials</label>
											<br>
												<strapi:foreachTenantInstitutionalEssentials var="tenantInstitutionalEssentialsIter">
													<strapi:tenantInstitutionalEssentials>
													<input type="radio" name="ID" value="<strapi:tenantInstitutionalEssentialsID />"><label for="ID"><strapi:tenantInstitutionalEssentialsID /></label>
													<br>
													</strapi:tenantInstitutionalEssentials>
												</strapi:foreachTenantInstitutionalEssentials>
											<label for="tenantInstitutionalEssentialId">TenantInstitutionalEssentialId</label>
											<input type="text" id="tenantInstitutionalEssentialId" name="tenantInstitutionalEssentialId" size="40" value="<strapi:tenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:tenantInstitutionalEssentialsJoinBlockLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantInstitutionalEssentialsJoinBlockLinks>
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
		<fmt:parseNumber var="contentImageBlockLeftId" value="${param.contentImageBlockLeftId}" />
		<strapi:tenantInstitutionalEssentialsJoinBlockLinks ID="${ID}">
			<strapi:tenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId tenantInstitutionalEssentialId = "${param.tenantInstitutionalEssentialId}" />
			<strapi:tenantInstitutionalEssentialsJoinBlockLinksContentImageBlockLeftId contentImageBlockLeftId = "${param.contentImageBlockLeftId}" />
		</strapi:tenantInstitutionalEssentialsJoinBlockLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>