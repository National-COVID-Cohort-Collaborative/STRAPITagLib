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
								<strapi:durRequests ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>DurRequests</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:durRequestsHeader />">
											<br>

											<label for="requestHeader">RequestHeader</label>
											<input type="text" id="requestHeader" name="requestHeader" size="40" value="<strapi:durRequestsRequestHeader />">
											<br>

											<label for="requestBlock">RequestBlock</label>
											<input type="text" id="requestBlock" name="requestBlock" size="40" value="<strapi:durRequestsRequestBlock />">
											<br>

											<label for="overviewHeader">OverviewHeader</label>
											<input type="text" id="overviewHeader" name="overviewHeader" size="40" value="<strapi:durRequestsOverviewHeader />">
											<br>

											<label for="overviewBlock">OverviewBlock</label>
											<input type="text" id="overviewBlock" name="overviewBlock" size="40" value="<strapi:durRequestsOverviewBlock />">
											<br>

											<label for="processHeader">ProcessHeader</label>
											<input type="text" id="processHeader" name="processHeader" size="40" value="<strapi:durRequestsProcessHeader />">
											<br>

											<label for="prereqHeader">PrereqHeader</label>
											<input type="text" id="prereqHeader" name="prereqHeader" size="40" value="<strapi:durRequestsPrereqHeader />">
											<br>

											<label for="prereqBlock">PrereqBlock</label>
											<input type="text" id="prereqBlock" name="prereqBlock" size="40" value="<strapi:durRequestsPrereqBlock />">
											<br>

											<label for="submitHeader">SubmitHeader</label>
											<input type="text" id="submitHeader" name="submitHeader" size="40" value="<strapi:durRequestsSubmitHeader />">
											<br>

											<label for="submitBlock">SubmitBlock</label>
											<input type="text" id="submitBlock" name="submitBlock" size="40" value="<strapi:durRequestsSubmitBlock />">
											<br>

											<label for="submitBlock2">SubmitBlock2</label>
											<input type="text" id="submitBlock2" name="submitBlock2" size="40" value="<strapi:durRequestsSubmitBlock2 />">
											<br>

											<label for="submitBlock3">SubmitBlock3</label>
											<input type="text" id="submitBlock3" name="submitBlock3" size="40" value="<strapi:durRequestsSubmitBlock3 />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:durRequestsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:durRequestsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:durRequestsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:durRequestsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:durRequestsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:durRequests>
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
		<strapi:durRequests ID="${ID}">
			<strapi:durRequestsHeader header = "${param.header}" />
			<strapi:durRequestsRequestHeader requestHeader = "${param.requestHeader}" />
			<strapi:durRequestsRequestBlock requestBlock = "${param.requestBlock}" />
			<strapi:durRequestsOverviewHeader overviewHeader = "${param.overviewHeader}" />
			<strapi:durRequestsOverviewBlock overviewBlock = "${param.overviewBlock}" />
			<strapi:durRequestsProcessHeader processHeader = "${param.processHeader}" />
			<strapi:durRequestsPrereqHeader prereqHeader = "${param.prereqHeader}" />
			<strapi:durRequestsPrereqBlock prereqBlock = "${param.prereqBlock}" />
			<strapi:durRequestsSubmitHeader submitHeader = "${param.submitHeader}" />
			<strapi:durRequestsSubmitBlock submitBlock = "${param.submitBlock}" />
			<strapi:durRequestsSubmitBlock2 submitBlock2 = "${param.submitBlock2}" />
			<strapi:durRequestsSubmitBlock3 submitBlock3 = "${param.submitBlock3}" />
			<strapi:durRequestsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:durRequestsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:durRequestsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:durRequestsCreatedById createdById = "${param.createdById}" />
			<strapi:durRequestsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:durRequests>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>