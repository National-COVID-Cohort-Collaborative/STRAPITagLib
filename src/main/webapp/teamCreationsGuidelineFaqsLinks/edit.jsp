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
								<strapi:teamCreationsGuidelineFaqsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TeamCreationsGuidelineFaqsLinks</legend>
											<label for="Faqs">Faqs</label>
											<br>
												<strapi:foreachFaqs var="faqsIter">
													<strapi:faqs>
													<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
													<br>
													</strapi:faqs>
												</strapi:foreachFaqs>
											<label for="TeamCreations">TeamCreations</label>
											<br>
												<strapi:foreachTeamCreations var="teamCreationsIter">
													<strapi:teamCreations>
													<input type="radio" name="ID" value="<strapi:teamCreationsID />"><label for="ID"><strapi:teamCreationsID /></label>
													<br>
													</strapi:teamCreations>
												</strapi:foreachTeamCreations>
											<label for="teamCreationId">TeamCreationId</label>
											<input type="text" id="teamCreationId" name="teamCreationId" size="40" value="<strapi:teamCreationsGuidelineFaqsLinksTeamCreationId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:teamCreationsGuidelineFaqsLinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:teamCreationsGuidelineFaqsLinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:teamCreationsGuidelineFaqsLinks>
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
								<strapi:teamCreationsGuidelineFaqsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TeamCreationsGuidelineFaqsLinks</legend>
											<label for="Faqs">Faqs</label>
											<br>
												<strapi:foreachFaqs var="faqsIter">
													<strapi:faqs>
													<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
													<br>
													</strapi:faqs>
												</strapi:foreachFaqs>
											<label for="TeamCreations">TeamCreations</label>
											<br>
												<strapi:foreachTeamCreations var="teamCreationsIter">
													<strapi:teamCreations>
													<input type="radio" name="ID" value="<strapi:teamCreationsID />"><label for="ID"><strapi:teamCreationsID /></label>
													<br>
													</strapi:teamCreations>
												</strapi:foreachTeamCreations>
											<label for="teamCreationId">TeamCreationId</label>
											<input type="text" id="teamCreationId" name="teamCreationId" size="40" value="<strapi:teamCreationsGuidelineFaqsLinksTeamCreationId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:teamCreationsGuidelineFaqsLinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:teamCreationsGuidelineFaqsLinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:teamCreationsGuidelineFaqsLinks>
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
		<fmt:parseNumber var="teamCreationId" value="${param.teamCreationId}" />
		<fmt:parseNumber var="faqId" value="${param.faqId}" />
		<strapi:teamCreationsGuidelineFaqsLinks ID="${ID}">
			<strapi:teamCreationsGuidelineFaqsLinksTeamCreationId teamCreationId = "${param.teamCreationId}" />
			<strapi:teamCreationsGuidelineFaqsLinksFaqId faqId = "${param.faqId}" />
			<strapi:teamCreationsGuidelineFaqsLinksFaqOrder faqOrder = "${param.faqOrder}" />
		</strapi:teamCreationsGuidelineFaqsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>