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
										<legend>ResearcherEssentialsJoinBlockLinks</legend>
										<label for="ResearcherEssentials">ResearcherEssentials</label>
										<br>
											<strapi:foreachResearcherEssentials var="researcherEssentialsIter">
												<strapi:researcherEssentials>
												<input type="radio" name="ID" value="<strapi:researcherEssentialsID />"><label for="ID"><strapi:researcherEssentialsID /></label>
												<br>
												</strapi:researcherEssentials>
											</strapi:foreachResearcherEssentials>
										<label for="researcherEssentialId">ResearcherEssentialId</label>
										<input type="text" id="researcherEssentialId" name="researcherEssentialId" size="40" value="">
										<br>

										<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
										<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="">
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
										<legend>ResearcherEssentialsJoinBlockLinks</legend>
										<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
										<br>
											<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
												<strapi:contentImageBlockLefts>
												<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
												<br>
												</strapi:contentImageBlockLefts>
											</strapi:foreachContentImageBlockLefts>
										<label for="researcherEssentialId">ResearcherEssentialId</label>
										<input type="text" id="researcherEssentialId" name="researcherEssentialId" size="40" value="">
										<br>

										<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
										<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="">
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
		<strapi:contentImageBlockLefts ID = "${param.ID}">
		<strapi:researcherEssentials ID = "${param.ID}">
			<strapi:researcherEssentialsJoinBlockLinks>
				<strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId researcherEssentialId = "${param.researcherEssentialId}" />
				<strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId contentImageBlockLeftId = "${param.contentImageBlockLeftId}" />
			</strapi:researcherEssentialsJoinBlockLinks>
		</strapi:researcherEssentials>
		</strapi:contentImageBlockLefts>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>