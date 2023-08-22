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
								<strapi:toolsToolLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ToolsToolLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="Tools">Tools</label>
											<br>
												<strapi:foreachTools var="toolsIter">
													<strapi:tools>
													<input type="radio" name="ID" value="<strapi:toolsID />"><label for="ID"><strapi:toolsID /></label>
													<br>
													</strapi:tools>
												</strapi:foreachTools>
											<label for="toolId">ToolId</label>
											<input type="text" id="toolId" name="toolId" size="40" value="<strapi:toolsToolLinksToolId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:toolsToolLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:toolsToolLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:toolsToolLinks>
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
								<strapi:toolsToolLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ToolsToolLinks</legend>
											<label for="ContentImageBlockRights">ContentImageBlockRights</label>
											<br>
												<strapi:foreachContentImageBlockRights var="contentImageBlockRightsIter">
													<strapi:contentImageBlockRights>
													<input type="radio" name="ID" value="<strapi:contentImageBlockRightsID />"><label for="ID"><strapi:contentImageBlockRightsID /></label>
													<br>
													</strapi:contentImageBlockRights>
												</strapi:foreachContentImageBlockRights>
											<label for="Tools">Tools</label>
											<br>
												<strapi:foreachTools var="toolsIter">
													<strapi:tools>
													<input type="radio" name="ID" value="<strapi:toolsID />"><label for="ID"><strapi:toolsID /></label>
													<br>
													</strapi:tools>
												</strapi:foreachTools>
											<label for="toolId">ToolId</label>
											<input type="text" id="toolId" name="toolId" size="40" value="<strapi:toolsToolLinksToolId />">
											<br>

											<label for="contentImageBlockRightId">ContentImageBlockRightId</label>
											<input type="text" id="contentImageBlockRightId" name="contentImageBlockRightId" size="40" value="<strapi:toolsToolLinksContentImageBlockRightId />">
											<br>

											<label for="contentImageBlockRightOrder">ContentImageBlockRightOrder</label>
											<input type="text" id="contentImageBlockRightOrder" name="contentImageBlockRightOrder" size="40" value="<strapi:toolsToolLinksContentImageBlockRightOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:toolsToolLinks>
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
		<fmt:parseNumber var="toolId" value="${param.toolId}" />
		<fmt:parseNumber var="contentImageBlockRightId" value="${param.contentImageBlockRightId}" />
		<strapi:toolsToolLinks ID="${ID}">
			<strapi:toolsToolLinksToolId toolId = "${param.toolId}" />
			<strapi:toolsToolLinksContentImageBlockRightId contentImageBlockRightId = "${param.contentImageBlockRightId}" />
			<strapi:toolsToolLinksContentImageBlockRightOrder contentImageBlockRightOrder = "${param.contentImageBlockRightOrder}" />
		</strapi:toolsToolLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>