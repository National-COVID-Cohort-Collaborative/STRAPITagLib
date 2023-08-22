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
								<strapi:publicationReviews ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PublicationReviews</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:publicationReviewsHeader />">
											<br>

											<label for="header2">Header2</label>
											<input type="text" id="header2" name="header2" size="40" value="<strapi:publicationReviewsHeader2 />">
											<br>

											<label for="faqBlock1">FaqBlock1</label>
											<input type="text" id="faqBlock1" name="faqBlock1" size="40" value="<strapi:publicationReviewsFaqBlock1 />">
											<br>

											<label for="faqBlock2">FaqBlock2</label>
											<input type="text" id="faqBlock2" name="faqBlock2" size="40" value="<strapi:publicationReviewsFaqBlock2 />">
											<br>

											<label for="block2">Block2</label>
											<input type="text" id="block2" name="block2" size="40" value="<strapi:publicationReviewsBlock2 />">
											<br>

											<label for="block3">Block3</label>
											<input type="text" id="block3" name="block3" size="40" value="<strapi:publicationReviewsBlock3 />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:publicationReviewsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:publicationReviewsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:publicationReviewsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:publicationReviewsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:publicationReviewsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:publicationReviews>
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
		<strapi:publicationReviews ID="${ID}">
			<strapi:publicationReviewsHeader header = "${param.header}" />
			<strapi:publicationReviewsHeader2 header2 = "${param.header2}" />
			<strapi:publicationReviewsFaqBlock1 faqBlock1 = "${param.faqBlock1}" />
			<strapi:publicationReviewsFaqBlock2 faqBlock2 = "${param.faqBlock2}" />
			<strapi:publicationReviewsBlock2 block2 = "${param.block2}" />
			<strapi:publicationReviewsBlock3 block3 = "${param.block3}" />
			<strapi:publicationReviewsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:publicationReviewsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:publicationReviewsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:publicationReviewsCreatedById createdById = "${param.createdById}" />
			<strapi:publicationReviewsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:publicationReviews>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>