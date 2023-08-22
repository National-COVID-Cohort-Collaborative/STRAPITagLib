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
								<strapi:institutionalEssentials ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>InstitutionalEssentials</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:institutionalEssentialsHeader />">
											<br>

											<label for="header2">Header2</label>
											<input type="text" id="header2" name="header2" size="40" value="<strapi:institutionalEssentialsHeader2 />">
											<br>

											<label for="block">Block</label>
											<input type="text" id="block" name="block" size="40" value="<strapi:institutionalEssentialsBlock />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:institutionalEssentialsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:institutionalEssentialsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:institutionalEssentialsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:institutionalEssentialsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:institutionalEssentialsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:institutionalEssentials>
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
		<strapi:institutionalEssentials ID="${ID}">
			<strapi:institutionalEssentialsHeader header = "${param.header}" />
			<strapi:institutionalEssentialsHeader2 header2 = "${param.header2}" />
			<strapi:institutionalEssentialsBlock block = "${param.block}" />
			<strapi:institutionalEssentialsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:institutionalEssentialsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:institutionalEssentialsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:institutionalEssentialsCreatedById createdById = "${param.createdById}" />
			<strapi:institutionalEssentialsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:institutionalEssentials>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>