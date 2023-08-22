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
								<strapi:faqListsHarmonizationFaqsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>FaqListsHarmonizationFaqsLinks</legend>
											<label for="FaqLists">FaqLists</label>
											<br>
												<strapi:foreachFaqLists var="faqListsIter">
													<strapi:faqLists>
													<input type="radio" name="ID" value="<strapi:faqListsID />"><label for="ID"><strapi:faqListsID /></label>
													<br>
													</strapi:faqLists>
												</strapi:foreachFaqLists>
											<label for="Faqs">Faqs</label>
											<br>
												<strapi:foreachFaqs var="faqsIter">
													<strapi:faqs>
													<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
													<br>
													</strapi:faqs>
												</strapi:foreachFaqs>
											<label for="faqListId">FaqListId</label>
											<input type="text" id="faqListId" name="faqListId" size="40" value="<strapi:faqListsHarmonizationFaqsLinksFaqListId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:faqListsHarmonizationFaqsLinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:faqListsHarmonizationFaqsLinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:faqListsHarmonizationFaqsLinks>
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
								<strapi:faqListsHarmonizationFaqsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>FaqListsHarmonizationFaqsLinks</legend>
											<label for="FaqLists">FaqLists</label>
											<br>
												<strapi:foreachFaqLists var="faqListsIter">
													<strapi:faqLists>
													<input type="radio" name="ID" value="<strapi:faqListsID />"><label for="ID"><strapi:faqListsID /></label>
													<br>
													</strapi:faqLists>
												</strapi:foreachFaqLists>
											<label for="Faqs">Faqs</label>
											<br>
												<strapi:foreachFaqs var="faqsIter">
													<strapi:faqs>
													<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
													<br>
													</strapi:faqs>
												</strapi:foreachFaqs>
											<label for="faqListId">FaqListId</label>
											<input type="text" id="faqListId" name="faqListId" size="40" value="<strapi:faqListsHarmonizationFaqsLinksFaqListId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:faqListsHarmonizationFaqsLinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:faqListsHarmonizationFaqsLinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:faqListsHarmonizationFaqsLinks>
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
		<fmt:parseNumber var="faqListId" value="${param.faqListId}" />
		<fmt:parseNumber var="faqId" value="${param.faqId}" />
		<strapi:faqListsHarmonizationFaqsLinks ID="${ID}">
			<strapi:faqListsHarmonizationFaqsLinksFaqListId faqListId = "${param.faqListId}" />
			<strapi:faqListsHarmonizationFaqsLinksFaqId faqId = "${param.faqId}" />
			<strapi:faqListsHarmonizationFaqsLinksFaqOrder faqOrder = "${param.faqOrder}" />
		</strapi:faqListsHarmonizationFaqsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>