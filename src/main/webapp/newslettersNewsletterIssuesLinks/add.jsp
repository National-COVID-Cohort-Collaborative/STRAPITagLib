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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>NewslettersNewsletterIssuesLinks</legend>
										<label for="Newsletters">Newsletters</label>
										<br>
											<strapi:foreachNewsletters var="newslettersIter">
												<strapi:newsletters>
												<input type="radio" name="ID" value="<strapi:newslettersID />"><label for="ID"><strapi:newslettersID /></label>
												<br>
												</strapi:newsletters>
											</strapi:foreachNewsletters>
										<label for="newsletterId">NewsletterId</label>
										<input type="text" id="newsletterId" name="newsletterId" size="40" value="">
										<br>

										<label for="newsletterIssueId">NewsletterIssueId</label>
										<input type="text" id="newsletterIssueId" name="newsletterIssueId" size="40" value="">
										<br>

										<label for="newsletterIssueOrder">NewsletterIssueOrder</label>
										<input type="text" id="newsletterIssueOrder" name="newsletterIssueOrder" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
										<input type="hidden" name="ID" value="${param.ID}">
									</fieldset>
								</form>
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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>NewslettersNewsletterIssuesLinks</legend>
										<label for="NewsletterIssues">NewsletterIssues</label>
										<br>
											<strapi:foreachNewsletterIssues var="newsletterIssuesIter">
												<strapi:newsletterIssues>
												<input type="radio" name="ID" value="<strapi:newsletterIssuesID />"><label for="ID"><strapi:newsletterIssuesID /></label>
												<br>
												</strapi:newsletterIssues>
											</strapi:foreachNewsletterIssues>
										<label for="newsletterId">NewsletterId</label>
										<input type="text" id="newsletterId" name="newsletterId" size="40" value="">
										<br>

										<label for="newsletterIssueId">NewsletterIssueId</label>
										<input type="text" id="newsletterIssueId" name="newsletterIssueId" size="40" value="">
										<br>

										<label for="newsletterIssueOrder">NewsletterIssueOrder</label>
										<input type="text" id="newsletterIssueOrder" name="newsletterIssueOrder" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
										<input type="hidden" name="ID" value="${param.ID}">
									</fieldset>
								</form>
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
		<strapi:newsletterIssues ID = "${param.ID}">
		<strapi:newsletters ID = "${param.ID}">
			<strapi:newslettersNewsletterIssuesLinks>
				<strapi:newslettersNewsletterIssuesLinksNewsletterId newsletterId = "${param.newsletterId}" />
				<strapi:newslettersNewsletterIssuesLinksNewsletterIssueId newsletterIssueId = "${param.newsletterIssueId}" />
				<strapi:newslettersNewsletterIssuesLinksNewsletterIssueOrder newsletterIssueOrder = "${param.newsletterIssueOrder}" />
			</strapi:newslettersNewsletterIssuesLinks>
		</strapi:newsletters>
		</strapi:newsletterIssues>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>