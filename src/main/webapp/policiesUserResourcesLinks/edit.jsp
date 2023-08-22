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
								<strapi:policiesUserResourcesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PoliciesUserResourcesLinks</legend>
											<label for="Policies">Policies</label>
											<br>
												<strapi:foreachPolicies var="policiesIter">
													<strapi:policies>
													<input type="radio" name="ID" value="<strapi:policiesID />"><label for="ID"><strapi:policiesID /></label>
													<br>
													</strapi:policies>
												</strapi:foreachPolicies>
											<label for="Resources">Resources</label>
											<br>
												<strapi:foreachResources var="resourcesIter">
													<strapi:resources>
													<input type="radio" name="ID" value="<strapi:resourcesID />"><label for="ID"><strapi:resourcesID /></label>
													<br>
													</strapi:resources>
												</strapi:foreachResources>
											<label for="policyId">PolicyId</label>
											<input type="text" id="policyId" name="policyId" size="40" value="<strapi:policiesUserResourcesLinksPolicyId />">
											<br>

											<label for="resourceId">ResourceId</label>
											<input type="text" id="resourceId" name="resourceId" size="40" value="<strapi:policiesUserResourcesLinksResourceId />">
											<br>

											<label for="resourceOrder">ResourceOrder</label>
											<input type="text" id="resourceOrder" name="resourceOrder" size="40" value="<strapi:policiesUserResourcesLinksResourceOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:policiesUserResourcesLinks>
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
								<strapi:policiesUserResourcesLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PoliciesUserResourcesLinks</legend>
											<label for="Policies">Policies</label>
											<br>
												<strapi:foreachPolicies var="policiesIter">
													<strapi:policies>
													<input type="radio" name="ID" value="<strapi:policiesID />"><label for="ID"><strapi:policiesID /></label>
													<br>
													</strapi:policies>
												</strapi:foreachPolicies>
											<label for="Resources">Resources</label>
											<br>
												<strapi:foreachResources var="resourcesIter">
													<strapi:resources>
													<input type="radio" name="ID" value="<strapi:resourcesID />"><label for="ID"><strapi:resourcesID /></label>
													<br>
													</strapi:resources>
												</strapi:foreachResources>
											<label for="policyId">PolicyId</label>
											<input type="text" id="policyId" name="policyId" size="40" value="<strapi:policiesUserResourcesLinksPolicyId />">
											<br>

											<label for="resourceId">ResourceId</label>
											<input type="text" id="resourceId" name="resourceId" size="40" value="<strapi:policiesUserResourcesLinksResourceId />">
											<br>

											<label for="resourceOrder">ResourceOrder</label>
											<input type="text" id="resourceOrder" name="resourceOrder" size="40" value="<strapi:policiesUserResourcesLinksResourceOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:policiesUserResourcesLinks>
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
		<fmt:parseNumber var="policyId" value="${param.policyId}" />
		<fmt:parseNumber var="resourceId" value="${param.resourceId}" />
		<strapi:policiesUserResourcesLinks ID="${ID}">
			<strapi:policiesUserResourcesLinksPolicyId policyId = "${param.policyId}" />
			<strapi:policiesUserResourcesLinksResourceId resourceId = "${param.resourceId}" />
			<strapi:policiesUserResourcesLinksResourceOrder resourceOrder = "${param.resourceOrder}" />
		</strapi:policiesUserResourcesLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>