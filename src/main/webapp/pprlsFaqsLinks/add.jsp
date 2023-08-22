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
										<legend>PprlsFaqsLinks</legend>
										<label for="Pprls">Pprls</label>
										<br>
											<strapi:foreachPprls var="pprlsIter">
												<strapi:pprls>
												<input type="radio" name="ID" value="<strapi:pprlsID />"><label for="ID"><strapi:pprlsID /></label>
												<br>
												</strapi:pprls>
											</strapi:foreachPprls>
										<label for="pprlId">PprlId</label>
										<input type="text" id="pprlId" name="pprlId" size="40" value="">
										<br>

										<label for="faqId">FaqId</label>
										<input type="text" id="faqId" name="faqId" size="40" value="">
										<br>

										<label for="faqOrder">FaqOrder</label>
										<input type="text" id="faqOrder" name="faqOrder" size="40" value="">
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
										<legend>PprlsFaqsLinks</legend>
										<label for="Faqs">Faqs</label>
										<br>
											<strapi:foreachFaqs var="faqsIter">
												<strapi:faqs>
												<input type="radio" name="ID" value="<strapi:faqsID />"><label for="ID"><strapi:faqsID /></label>
												<br>
												</strapi:faqs>
											</strapi:foreachFaqs>
										<label for="pprlId">PprlId</label>
										<input type="text" id="pprlId" name="pprlId" size="40" value="">
										<br>

										<label for="faqId">FaqId</label>
										<input type="text" id="faqId" name="faqId" size="40" value="">
										<br>

										<label for="faqOrder">FaqOrder</label>
										<input type="text" id="faqOrder" name="faqOrder" size="40" value="">
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
		<strapi:faqs ID = "${param.ID}">
		<strapi:pprls ID = "${param.ID}">
			<strapi:pprlsFaqsLinks>
				<strapi:pprlsFaqsLinksPprlId pprlId = "${param.pprlId}" />
				<strapi:pprlsFaqsLinksFaqId faqId = "${param.faqId}" />
				<strapi:pprlsFaqsLinksFaqOrder faqOrder = "${param.faqOrder}" />
			</strapi:pprlsFaqsLinks>
		</strapi:pprls>
		</strapi:faqs>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>