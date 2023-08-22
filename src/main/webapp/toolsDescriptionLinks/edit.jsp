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
								<strapi:toolsDescriptionLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ToolsDescriptionLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="Tools">Tools</label>
											<br>
												<strapi:foreachTools var="toolsIter">
													<strapi:tools>
													<input type="radio" name="ID" value="<strapi:toolsID />"><label for="ID"><strapi:toolsID /></label>
													<br>
													</strapi:tools>
												</strapi:foreachTools>
											<label for="toolId">ToolId</label>
											<input type="text" id="toolId" name="toolId" size="40" value="<strapi:toolsDescriptionLinksToolId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:toolsDescriptionLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:toolsDescriptionLinks>
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
								<strapi:toolsDescriptionLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ToolsDescriptionLinks</legend>
											<label for="ContentImageBlockLefts">ContentImageBlockLefts</label>
											<br>
												<strapi:foreachContentImageBlockLefts var="contentImageBlockLeftsIter">
													<strapi:contentImageBlockLefts>
													<input type="radio" name="ID" value="<strapi:contentImageBlockLeftsID />"><label for="ID"><strapi:contentImageBlockLeftsID /></label>
													<br>
													</strapi:contentImageBlockLefts>
												</strapi:foreachContentImageBlockLefts>
											<label for="Tools">Tools</label>
											<br>
												<strapi:foreachTools var="toolsIter">
													<strapi:tools>
													<input type="radio" name="ID" value="<strapi:toolsID />"><label for="ID"><strapi:toolsID /></label>
													<br>
													</strapi:tools>
												</strapi:foreachTools>
											<label for="toolId">ToolId</label>
											<input type="text" id="toolId" name="toolId" size="40" value="<strapi:toolsDescriptionLinksToolId />">
											<br>

											<label for="contentImageBlockLeftId">ContentImageBlockLeftId</label>
											<input type="text" id="contentImageBlockLeftId" name="contentImageBlockLeftId" size="40" value="<strapi:toolsDescriptionLinksContentImageBlockLeftId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:toolsDescriptionLinks>
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
		<fmt:parseNumber var="contentImageBlockLeftId" value="${param.contentImageBlockLeftId}" />
		<strapi:toolsDescriptionLinks ID="${ID}">
			<strapi:toolsDescriptionLinksToolId toolId = "${param.toolId}" />
			<strapi:toolsDescriptionLinksContentImageBlockLeftId contentImageBlockLeftId = "${param.contentImageBlockLeftId}" />
		</strapi:toolsDescriptionLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>