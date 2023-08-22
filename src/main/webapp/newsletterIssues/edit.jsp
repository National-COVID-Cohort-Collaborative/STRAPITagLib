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
								<strapi:newsletterIssues ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>NewsletterIssues</legend>
											<label for="issue">Issue</label>
											<input type="text" id="issue" name="issue" size="40" value="<strapi:newsletterIssuesIssue />">
											<br>

											<label for="url">Url</label>
											<input type="text" id="url" name="url" size="40" value="<strapi:newsletterIssuesUrl />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:newsletterIssuesCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:newsletterIssuesUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:newsletterIssuesPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:newsletterIssuesCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:newsletterIssuesUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:newsletterIssues>
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
		<strapi:newsletterIssues ID="${ID}">
			<strapi:newsletterIssuesIssue issue = "${param.issue}" />
			<strapi:newsletterIssuesUrl url = "${param.url}" />
			<strapi:newsletterIssuesCreatedAt createdAt = "${param.createdAt}" />
			<strapi:newsletterIssuesUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:newsletterIssuesPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:newsletterIssuesCreatedById createdById = "${param.createdById}" />
			<strapi:newsletterIssuesUpdatedById updatedById = "${param.updatedById}" />
		</strapi:newsletterIssues>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>