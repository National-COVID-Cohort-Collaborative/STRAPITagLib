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
								<strapi:navItems ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>NavItems</legend>
											<label for="label">Label</label>
											<input type="text" id="label" name="label" size="40" value="<strapi:navItemsLabel />">
											<br>

											<label for="url">Url</label>
											<input type="text" id="url" name="url" size="40" value="<strapi:navItemsUrl />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:navItemsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:navItemsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:navItemsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:navItemsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:navItemsUpdatedById />">
											<br>

											<label for="pageId">PageId</label>
											<input type="text" id="pageId" name="pageId" size="40" value="<strapi:navItemsPageId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:navItems>
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
		<fmt:parseNumber var="pageId" value="${param.pageId}" />
		<strapi:navItems ID="${ID}">
			<strapi:navItemsLabel label = "${param.label}" />
			<strapi:navItemsUrl url = "${param.url}" />
			<strapi:navItemsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:navItemsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:navItemsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:navItemsCreatedById createdById = "${param.createdById}" />
			<strapi:navItemsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:navItemsPageId pageId = "${param.pageId}" />
		</strapi:navItems>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>