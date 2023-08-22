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
								<strapi:phastrsPublicHealthQuestionsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PhastrsPublicHealthQuestionsLinks</legend>
											<label for="Phastrs">Phastrs</label>
											<br>
												<strapi:foreachPhastrs var="phastrsIter">
													<strapi:phastrs>
													<input type="radio" name="ID" value="<strapi:phastrsID />"><label for="ID"><strapi:phastrsID /></label>
													<br>
													</strapi:phastrs>
												</strapi:foreachPhastrs>
											<label for="PublicHealthQuestions">PublicHealthQuestions</label>
											<br>
												<strapi:foreachPublicHealthQuestions var="publicHealthQuestionsIter">
													<strapi:publicHealthQuestions>
													<input type="radio" name="ID" value="<strapi:publicHealthQuestionsID />"><label for="ID"><strapi:publicHealthQuestionsID /></label>
													<br>
													</strapi:publicHealthQuestions>
												</strapi:foreachPublicHealthQuestions>
											<label for="phastrId">PhastrId</label>
											<input type="text" id="phastrId" name="phastrId" size="40" value="<strapi:phastrsPublicHealthQuestionsLinksPhastrId />">
											<br>

											<label for="publicHealthQuestionId">PublicHealthQuestionId</label>
											<input type="text" id="publicHealthQuestionId" name="publicHealthQuestionId" size="40" value="<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionId />">
											<br>

											<label for="publicHealthQuestionOrder">PublicHealthQuestionOrder</label>
											<input type="text" id="publicHealthQuestionOrder" name="publicHealthQuestionOrder" size="40" value="<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:phastrsPublicHealthQuestionsLinks>
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
								<strapi:phastrsPublicHealthQuestionsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>PhastrsPublicHealthQuestionsLinks</legend>
											<label for="Phastrs">Phastrs</label>
											<br>
												<strapi:foreachPhastrs var="phastrsIter">
													<strapi:phastrs>
													<input type="radio" name="ID" value="<strapi:phastrsID />"><label for="ID"><strapi:phastrsID /></label>
													<br>
													</strapi:phastrs>
												</strapi:foreachPhastrs>
											<label for="PublicHealthQuestions">PublicHealthQuestions</label>
											<br>
												<strapi:foreachPublicHealthQuestions var="publicHealthQuestionsIter">
													<strapi:publicHealthQuestions>
													<input type="radio" name="ID" value="<strapi:publicHealthQuestionsID />"><label for="ID"><strapi:publicHealthQuestionsID /></label>
													<br>
													</strapi:publicHealthQuestions>
												</strapi:foreachPublicHealthQuestions>
											<label for="phastrId">PhastrId</label>
											<input type="text" id="phastrId" name="phastrId" size="40" value="<strapi:phastrsPublicHealthQuestionsLinksPhastrId />">
											<br>

											<label for="publicHealthQuestionId">PublicHealthQuestionId</label>
											<input type="text" id="publicHealthQuestionId" name="publicHealthQuestionId" size="40" value="<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionId />">
											<br>

											<label for="publicHealthQuestionOrder">PublicHealthQuestionOrder</label>
											<input type="text" id="publicHealthQuestionOrder" name="publicHealthQuestionOrder" size="40" value="<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:phastrsPublicHealthQuestionsLinks>
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
		<fmt:parseNumber var="phastrId" value="${param.phastrId}" />
		<fmt:parseNumber var="publicHealthQuestionId" value="${param.publicHealthQuestionId}" />
		<strapi:phastrsPublicHealthQuestionsLinks ID="${ID}">
			<strapi:phastrsPublicHealthQuestionsLinksPhastrId phastrId = "${param.phastrId}" />
			<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionId publicHealthQuestionId = "${param.publicHealthQuestionId}" />
			<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionOrder publicHealthQuestionOrder = "${param.publicHealthQuestionOrder}" />
		</strapi:phastrsPublicHealthQuestionsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>