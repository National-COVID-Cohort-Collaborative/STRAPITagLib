<%@ include file="../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit}">
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
								<strapi:tenantDurRequests ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TenantDurRequests</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:tenantDurRequestsHeader />">
											<br>

											<label for="requestHeader">RequestHeader</label>
											<input type="text" id="requestHeader" name="requestHeader" size="40" value="<strapi:tenantDurRequestsRequestHeader />">
											<br>

											<label for="requestBlock">RequestBlock</label>
											<input type="text" id="requestBlock" name="requestBlock" size="40" value="<strapi:tenantDurRequestsRequestBlock />">
											<br>

											<label for="overviewHeader">OverviewHeader</label>
											<input type="text" id="overviewHeader" name="overviewHeader" size="40" value="<strapi:tenantDurRequestsOverviewHeader />">
											<br>

											<label for="overviewBlock">OverviewBlock</label>
											<input type="text" id="overviewBlock" name="overviewBlock" size="40" value="<strapi:tenantDurRequestsOverviewBlock />">
											<br>

											<label for="processHeader">ProcessHeader</label>
											<input type="text" id="processHeader" name="processHeader" size="40" value="<strapi:tenantDurRequestsProcessHeader />">
											<br>

											<label for="prereqHeader">PrereqHeader</label>
											<input type="text" id="prereqHeader" name="prereqHeader" size="40" value="<strapi:tenantDurRequestsPrereqHeader />">
											<br>

											<label for="prereqBlock">PrereqBlock</label>
											<input type="text" id="prereqBlock" name="prereqBlock" size="40" value="<strapi:tenantDurRequestsPrereqBlock />">
											<br>

											<label for="submitHeader">SubmitHeader</label>
											<input type="text" id="submitHeader" name="submitHeader" size="40" value="<strapi:tenantDurRequestsSubmitHeader />">
											<br>

											<label for="submitBlock">SubmitBlock</label>
											<input type="text" id="submitBlock" name="submitBlock" size="40" value="<strapi:tenantDurRequestsSubmitBlock />">
											<br>

											<label for="submitBlock2">SubmitBlock2</label>
											<input type="text" id="submitBlock2" name="submitBlock2" size="40" value="<strapi:tenantDurRequestsSubmitBlock2 />">
											<br>

											<label for="submitBlock3">SubmitBlock3</label>
											<input type="text" id="submitBlock3" name="submitBlock3" size="40" value="<strapi:tenantDurRequestsSubmitBlock3 />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:tenantDurRequestsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:tenantDurRequestsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:tenantDurRequestsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:tenantDurRequestsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:tenantDurRequestsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tenantDurRequests>
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
		<fmt:parseNumber var="createdById" value="${param.createdById}" />
		<fmt:parseNumber var="updatedById" value="${param.updatedById}" />
		<strapi:tenantDurRequests ID="${ID}">
			<strapi:tenantDurRequestsHeader header = "${param.header}" />
			<strapi:tenantDurRequestsRequestHeader requestHeader = "${param.requestHeader}" />
			<strapi:tenantDurRequestsRequestBlock requestBlock = "${param.requestBlock}" />
			<strapi:tenantDurRequestsOverviewHeader overviewHeader = "${param.overviewHeader}" />
			<strapi:tenantDurRequestsOverviewBlock overviewBlock = "${param.overviewBlock}" />
			<strapi:tenantDurRequestsProcessHeader processHeader = "${param.processHeader}" />
			<strapi:tenantDurRequestsPrereqHeader prereqHeader = "${param.prereqHeader}" />
			<strapi:tenantDurRequestsPrereqBlock prereqBlock = "${param.prereqBlock}" />
			<strapi:tenantDurRequestsSubmitHeader submitHeader = "${param.submitHeader}" />
			<strapi:tenantDurRequestsSubmitBlock submitBlock = "${param.submitBlock}" />
			<strapi:tenantDurRequestsSubmitBlock2 submitBlock2 = "${param.submitBlock2}" />
			<strapi:tenantDurRequestsSubmitBlock3 submitBlock3 = "${param.submitBlock3}" />
			<strapi:tenantDurRequestsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:tenantDurRequestsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:tenantDurRequestsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:tenantDurRequestsCreatedById createdById = "${param.createdById}" />
			<strapi:tenantDurRequestsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:tenantDurRequests>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>