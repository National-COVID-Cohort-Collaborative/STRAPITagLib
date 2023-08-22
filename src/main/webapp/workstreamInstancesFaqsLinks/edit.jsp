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
								<strapi:workstreamInstancesFaqsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamInstancesFaqsLinks</legend>
											<label for="Faqs">Faqs</label>
											<br>
												<strapi:foreachFaqs var="faqsIter">
													<strapi:faqs>
													<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
													<br>
													</strapi:faqs>
												</strapi:foreachFaqs>
											<label for="WorkstreamInstances">WorkstreamInstances</label>
											<br>
												<strapi:foreachWorkstreamInstances var="workstreamInstancesIter">
													<strapi:workstreamInstances>
													<input type="radio" name="ID" value="<strapi:workstreamInstancesID />"><label for="ID"><strapi:workstreamInstancesID /></label>
													<br>
													</strapi:workstreamInstances>
												</strapi:foreachWorkstreamInstances>
											<label for="workstreamInstanceId">WorkstreamInstanceId</label>
											<input type="text" id="workstreamInstanceId" name="workstreamInstanceId" size="40" value="<strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:workstreamInstancesFaqsLinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:workstreamInstancesFaqsLinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamInstancesFaqsLinks>
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
								<strapi:workstreamInstancesFaqsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamInstancesFaqsLinks</legend>
											<label for="Faqs">Faqs</label>
											<br>
												<strapi:foreachFaqs var="faqsIter">
													<strapi:faqs>
													<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
													<br>
													</strapi:faqs>
												</strapi:foreachFaqs>
											<label for="WorkstreamInstances">WorkstreamInstances</label>
											<br>
												<strapi:foreachWorkstreamInstances var="workstreamInstancesIter">
													<strapi:workstreamInstances>
													<input type="radio" name="ID" value="<strapi:workstreamInstancesID />"><label for="ID"><strapi:workstreamInstancesID /></label>
													<br>
													</strapi:workstreamInstances>
												</strapi:foreachWorkstreamInstances>
											<label for="workstreamInstanceId">WorkstreamInstanceId</label>
											<input type="text" id="workstreamInstanceId" name="workstreamInstanceId" size="40" value="<strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId />">
											<br>

											<label for="faqId">FaqId</label>
											<input type="text" id="faqId" name="faqId" size="40" value="<strapi:workstreamInstancesFaqsLinksFaqId />">
											<br>

											<label for="faqOrder">FaqOrder</label>
											<input type="text" id="faqOrder" name="faqOrder" size="40" value="<strapi:workstreamInstancesFaqsLinksFaqOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamInstancesFaqsLinks>
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
		<fmt:parseNumber var="workstreamInstanceId" value="${param.workstreamInstanceId}" />
		<fmt:parseNumber var="faqId" value="${param.faqId}" />
		<strapi:workstreamInstancesFaqsLinks ID="${ID}">
			<strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId workstreamInstanceId = "${param.workstreamInstanceId}" />
			<strapi:workstreamInstancesFaqsLinksFaqId faqId = "${param.faqId}" />
			<strapi:workstreamInstancesFaqsLinksFaqOrder faqOrder = "${param.faqOrder}" />
		</strapi:workstreamInstancesFaqsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>