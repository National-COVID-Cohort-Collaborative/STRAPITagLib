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
								<strapi:tools ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Tools</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:toolsHeader />">
											<br>

											<label for="header2">Header2</label>
											<input type="text" id="header2" name="header2" size="40" value="<strapi:toolsHeader2 />">
											<br>

											<label for="block1">Block1</label>
											<input type="text" id="block1" name="block1" size="40" value="<strapi:toolsBlock1 />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:toolsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:toolsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:toolsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:toolsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:toolsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tools>
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
		<strapi:tools ID="${ID}">
			<strapi:toolsHeader header = "${param.header}" />
			<strapi:toolsHeader2 header2 = "${param.header2}" />
			<strapi:toolsBlock1 block1 = "${param.block1}" />
			<strapi:toolsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:toolsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:toolsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:toolsCreatedById createdById = "${param.createdById}" />
			<strapi:toolsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:tools>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>