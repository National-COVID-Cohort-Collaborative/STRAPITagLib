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
								<strapi:publicationReviewsFaqs1Links ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PublicationReviewsFaqs1Links</legend>
											<label for="Faqs">Faqs</label>
											<br>
												<strapi:foreachFaqs var="faqsIter">
													<strapi:faqs>
													<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
													<br>
													</strapi:faqs>
												</strapi:foreachFaqs>
											<label for="PublicationReviews">PublicationReviews</label>
											<br>
												<strapi:foreachPublicationReviews var="publicationReviewsIter">
													<strapi:publicationReviews>
													<input type="radio" name="ID" value="<strapi:publicationReviewsID />"><label for="ID"><strapi:publicationReviewsID /></label>
													<br>
													</strapi:publicationReviews>
												</strapi:foreachPublicationReviews>
											<label for="publicationReviewId">PublicationReviewId</label>
											<input type="text" id="publicationReviewId" name="publicationReviewId" size="40" value="<strapi:publicationReviewsFaqs1LinksPublicationReviewId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:publicationReviewsFaqs1LinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:publicationReviewsFaqs1LinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:publicationReviewsFaqs1Links>
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
								<strapi:publicationReviewsFaqs1Links ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PublicationReviewsFaqs1Links</legend>
											<label for="Faqs">Faqs</label>
											<br>
												<strapi:foreachFaqs var="faqsIter">
													<strapi:faqs>
													<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
													<br>
													</strapi:faqs>
												</strapi:foreachFaqs>
											<label for="PublicationReviews">PublicationReviews</label>
											<br>
												<strapi:foreachPublicationReviews var="publicationReviewsIter">
													<strapi:publicationReviews>
													<input type="radio" name="ID" value="<strapi:publicationReviewsID />"><label for="ID"><strapi:publicationReviewsID /></label>
													<br>
													</strapi:publicationReviews>
												</strapi:foreachPublicationReviews>
											<label for="publicationReviewId">PublicationReviewId</label>
											<input type="text" id="publicationReviewId" name="publicationReviewId" size="40" value="<strapi:publicationReviewsFaqs1LinksPublicationReviewId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:publicationReviewsFaqs1LinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:publicationReviewsFaqs1LinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:publicationReviewsFaqs1Links>
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
		<fmt:parseNumber var="faqId" value="${param.faqId}" />
		<strapi:publicationReviewsFaqs1Links ID="${ID}">
			<strapi:publicationReviewsFaqs1LinksPublicationReviewId publicationReviewId = "${param.publicationReviewId}" />
			<strapi:publicationReviewsFaqs1LinksFaqId faqId = "${param.faqId}" />
			<strapi:publicationReviewsFaqs1LinksFaqOrder faqOrder = "${param.faqOrder}" />
		</strapi:publicationReviewsFaqs1Links>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>