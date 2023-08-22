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
								<strapi:phastrs ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Phastrs</legend>
											<label for="about">About</label>
											<input type="text" id="about" name="about" size="40" value="<strapi:phastrsAbout />">
											<br>

											<label for="eligibility">Eligibility</label>
											<input type="text" id="eligibility" name="eligibility" size="40" value="<strapi:phastrsEligibility />">
											<br>

											<label for="submission">Submission</label>
											<input type="text" id="submission" name="submission" size="40" value="<strapi:phastrsSubmission />">
											<br>

											<label for="quickStart">QuickStart</label>
											<input type="text" id="quickStart" name="quickStart" size="40" value="<strapi:phastrsQuickStart />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:phastrsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:phastrsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:phastrsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:phastrsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:phastrsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:phastrs>
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
		<strapi:phastrs ID="${ID}">
			<strapi:phastrsAbout about = "${param.about}" />
			<strapi:phastrsEligibility eligibility = "${param.eligibility}" />
			<strapi:phastrsSubmission submission = "${param.submission}" />
			<strapi:phastrsQuickStart quickStart = "${param.quickStart}" />
			<strapi:phastrsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:phastrsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:phastrsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:phastrsCreatedById createdById = "${param.createdById}" />
			<strapi:phastrsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:phastrs>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>