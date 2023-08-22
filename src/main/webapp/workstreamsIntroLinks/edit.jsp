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
								<strapi:workstreamsIntroLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamsIntroLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="Workstreams">Workstreams</label>
											<br>
												<strapi:foreachWorkstreams var="workstreamsIter">
													<strapi:workstreams>
													<input type="radio" name="ID" value="<strapi:workstreamsID />"><label for="ID"><strapi:workstreamsID /></label>
													<br>
													</strapi:workstreams>
												</strapi:foreachWorkstreams>
											<label for="workstreamId">WorkstreamId</label>
											<input type="text" id="workstreamId" name="workstreamId" size="40" value="<strapi:workstreamsIntroLinksWorkstreamId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:workstreamsIntroLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamsIntroLinks>
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
								<strapi:workstreamsIntroLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamsIntroLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="Workstreams">Workstreams</label>
											<br>
												<strapi:foreachWorkstreams var="workstreamsIter">
													<strapi:workstreams>
													<input type="radio" name="ID" value="<strapi:workstreamsID />"><label for="ID"><strapi:workstreamsID /></label>
													<br>
													</strapi:workstreams>
												</strapi:foreachWorkstreams>
											<label for="workstreamId">WorkstreamId</label>
											<input type="text" id="workstreamId" name="workstreamId" size="40" value="<strapi:workstreamsIntroLinksWorkstreamId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:workstreamsIntroLinksContentImageBlockRightId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamsIntroLinks>
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
		<fmt:parseNumber var="workstreamId" value="${param.workstreamId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:workstreamsIntroLinks ID="${ID}">
			<strapi:workstreamsIntroLinksWorkstreamId workstreamId = "${param.workstreamId}" />
			<strapi:workstreamsIntroLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
		</strapi:workstreamsIntroLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>