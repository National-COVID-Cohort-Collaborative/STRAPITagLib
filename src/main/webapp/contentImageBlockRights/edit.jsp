<%@ include file="../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit}">
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
								<strapi:contentImageBlockRights ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ContentImageBlockRights</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:contentImageBlockRightsHeader />">
											<br>

											<label for="content">Content</label>
											<input type="text" id="content" name="content" size="40" value="<strapi:contentImageBlockRightsContent />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:contentImageBlockRightsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:contentImageBlockRightsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:contentImageBlockRightsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:contentImageBlockRightsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:contentImageBlockRightsUpdatedById />">
											<br>

											<label for="url">Url</label>
											<input type="text" id="url" name="url" size="40" value="<strapi:contentImageBlockRightsUrl />">
											<br>

											<label for="urlLabel">UrlLabel</label>
											<input type="text" id="urlLabel" name="urlLabel" size="40" value="<strapi:contentImageBlockRightsUrlLabel />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:contentImageBlockRights>
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
		<fmt:parseNumber var="createdById" value="${param.createdById}" />
		<fmt:parseNumber var="updatedById" value="${param.updatedById}" />
		<strapi:contentImageBlockRights ID="${ID}">
			<strapi:contentImageBlockRightsHeader header = "${param.header}" />
			<strapi:contentImageBlockRightsContent content = "${param.content}" />
			<strapi:contentImageBlockRightsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:contentImageBlockRightsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:contentImageBlockRightsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:contentImageBlockRightsCreatedById createdById = "${param.createdById}" />
			<strapi:contentImageBlockRightsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:contentImageBlockRightsUrl url = "${param.url}" />
			<strapi:contentImageBlockRightsUrlLabel urlLabel = "${param.urlLabel}" />
		</strapi:contentImageBlockRights>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>