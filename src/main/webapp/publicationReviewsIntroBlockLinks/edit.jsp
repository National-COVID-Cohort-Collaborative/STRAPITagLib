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
								<strapi:publicationReviewsIntroBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PublicationReviewsIntroBlockLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="PublicationReviews">PublicationReviews</label>
											<br>
												<strapi:foreachPublicationReviews var="publicationReviewsIter">
													<strapi:publicationReviews>
													<input type="radio" name="ID" value="<strapi:publicationReviewsID />"><label for="ID"><strapi:publicationReviewsID /></label>
													<br>
													</strapi:publicationReviews>
												</strapi:foreachPublicationReviews>
											<label for="publicationReviewId">PublicationReviewId</label>
											<input type="text" id="publicationReviewId" name="publicationReviewId" size="40" value="<strapi:publicationReviewsIntroBlockLinksPublicationReviewId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:publicationReviewsIntroBlockLinks>
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
								<strapi:publicationReviewsIntroBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PublicationReviewsIntroBlockLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="PublicationReviews">PublicationReviews</label>
											<br>
												<strapi:foreachPublicationReviews var="publicationReviewsIter">
													<strapi:publicationReviews>
													<input type="radio" name="ID" value="<strapi:publicationReviewsID />"><label for="ID"><strapi:publicationReviewsID /></label>
													<br>
													</strapi:publicationReviews>
												</strapi:foreachPublicationReviews>
											<label for="publicationReviewId">PublicationReviewId</label>
											<input type="text" id="publicationReviewId" name="publicationReviewId" size="40" value="<strapi:publicationReviewsIntroBlockLinksPublicationReviewId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:publicationReviewsIntroBlockLinks>
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
		<fmt:parseNumber var="publicationReviewId" value="${param.publicationReviewId}" />
		<fmt:parseNumber var="contentImageBlockLeftId" value="${param.contentImageBlockLeftId}" />
		<strapi:publicationReviewsIntroBlockLinks ID="${ID}">
			<strapi:publicationReviewsIntroBlockLinksPublicationReviewId publicationReviewId = "${param.publicationReviewId}" />
			<strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId contentImageBlockLeftId = "${param.contentImageBlockLeftId}" />
		</strapi:publicationReviewsIntroBlockLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>