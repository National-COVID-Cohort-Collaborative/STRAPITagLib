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
								<strapi:faqListsSyntheticFaqsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>FaqListsSyntheticFaqsLinks</legend>
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
											<input type="text" id="faqListId" name="faqListId" size="40" value="<strapi:faqListsSyntheticFaqsLinksFaqListId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:faqListsSyntheticFaqsLinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:faqListsSyntheticFaqsLinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:faqListsSyntheticFaqsLinks>
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
								<strapi:faqListsSyntheticFaqsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>FaqListsSyntheticFaqsLinks</legend>
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
											<input type="text" id="faqListId" name="faqListId" size="40" value="<strapi:faqListsSyntheticFaqsLinksFaqListId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:faqListsSyntheticFaqsLinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:faqListsSyntheticFaqsLinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:faqListsSyntheticFaqsLinks>
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
		<strapi:faqListsSyntheticFaqsLinks ID="${ID}">
			<strapi:faqListsSyntheticFaqsLinksFaqListId faqListId = "${param.faqListId}" />
			<strapi:faqListsSyntheticFaqsLinksFaqId faqId = "${param.faqId}" />
			<strapi:faqListsSyntheticFaqsLinksFaqOrder faqOrder = "${param.faqOrder}" />
		</strapi:faqListsSyntheticFaqsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>