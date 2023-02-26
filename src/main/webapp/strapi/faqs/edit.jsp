<%@ include file="../../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit}">
        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:faqs ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Faqs</legend>
											<label for="question">Question</label>
											<input type="text" id="question" name="question" size="40" value="<strapi:faqsQuestion />">
											<br>

											<label for="answer">Answer</label>
											<input type="text" id="answer" name="answer" size="40" value="<strapi:faqsAnswer />">
											<br>

											<label for="category">Category</label>
											<input type="text" id="category" name="category" size="40" value="<strapi:faqsCategory />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:faqsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:faqsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:faqsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:faqsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:faqsUpdatedById />">
											<br>

											<label for="label">Label</label>
											<input type="text" id="label" name="label" size="40" value="<strapi:faqsLabel />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:faqs>
                        </div>
                    </div>
                </div>
                <jsp:include page="../../footer.jsp" />
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
		<strapi:faqs ID="${ID}">
			<strapi:faqsQuestion question = "${param.question}" />
			<strapi:faqsAnswer answer = "${param.answer}" />
			<strapi:faqsCategory category = "${param.category}" />
			<strapi:faqsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:faqsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:faqsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:faqsCreatedById createdById = "${param.createdById}" />
			<strapi:faqsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:faqsLabel label = "${param.label}" />
		</strapi:faqs>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>