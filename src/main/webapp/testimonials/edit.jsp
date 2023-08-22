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
								<strapi:testimonials ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Testimonials</legend>
											<label for="name">Name</label>
											<input type="text" id="name" name="name" size="40" value="<strapi:testimonialsName />">
											<br>

											<label for="quote">Quote</label>
											<input type="text" id="quote" name="quote" size="40" value="<strapi:testimonialsQuote />">
											<br>

											<label for="author">Author</label>
											<input type="text" id="author" name="author" size="40" value="<strapi:testimonialsAuthor />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:testimonialsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:testimonialsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:testimonialsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:testimonialsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:testimonialsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:testimonials>
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
		<strapi:testimonials ID="${ID}">
			<strapi:testimonialsName name = "${param.name}" />
			<strapi:testimonialsQuote quote = "${param.quote}" />
			<strapi:testimonialsAuthor author = "${param.author}" />
			<strapi:testimonialsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:testimonialsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:testimonialsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:testimonialsCreatedById createdById = "${param.createdById}" />
			<strapi:testimonialsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:testimonials>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>