<%@ include file="../../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit and not empty param.ID}">
        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:researcherEssentialsDomainBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ResearcherEssentialsDomainBlockLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="ResearcherEssentials">ResearcherEssentials</label>
											<br>
												<strapi:foreachResearcherEssentials var="researcherEssentialsIter">
													<strapi:researcherEssentials>
													<input type="radio" name="ID" value="<strapi:researcherEssentialsID />"><label for="ID"><strapi:researcherEssentialsID /></label>
													<br>
													</strapi:researcherEssentials>
												</strapi:foreachResearcherEssentials>
											<label for="researcherEssentialId">ResearcherEssentialId</label>
											<input type="text" id="researcherEssentialId" name="researcherEssentialId" size="40" value="<strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:researcherEssentialsDomainBlockLinks>
                        </div>
                    </div>
                </div>
                <jsp:include page="../../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${empty param.submit and not empty param.ID}">
        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:researcherEssentialsDomainBlockLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ResearcherEssentialsDomainBlockLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="ResearcherEssentials">ResearcherEssentials</label>
											<br>
												<strapi:foreachResearcherEssentials var="researcherEssentialsIter">
													<strapi:researcherEssentials>
													<input type="radio" name="ID" value="<strapi:researcherEssentialsID />"><label for="ID"><strapi:researcherEssentialsID /></label>
													<br>
													</strapi:researcherEssentials>
												</strapi:foreachResearcherEssentials>
											<label for="researcherEssentialId">ResearcherEssentialId</label>
											<input type="text" id="researcherEssentialId" name="researcherEssentialId" size="40" value="<strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:researcherEssentialsDomainBlockLinks>
                        </div>
                    </div>
                </div>
                <jsp:include page="../../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${param.submit eq 'Cancel'}">
		<c:redirect url="list.jsp" />
	</c:when>
	<c:when test="${param.submit eq 'Save'}">
		<fmt:parseNumber var="ID" value="${param.ID}" />
		<fmt:parseNumber var="researcherEssentialId" value="${param.researcherEssentialId}" />
		<fmt:parseNumber var="contentImageBlockLeftId" value="${param.contentImageBlockLeftId}" />
		<strapi:researcherEssentialsDomainBlockLinks ID="${ID}">
			<strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId researcherEssentialId = "${param.researcherEssentialId}" />
			<strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId contentImageBlockLeftId = "${param.contentImageBlockLeftId}" />
		</strapi:researcherEssentialsDomainBlockLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>