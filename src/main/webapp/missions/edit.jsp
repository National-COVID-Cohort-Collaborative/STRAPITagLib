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
								<strapi:missions ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Missions</legend>
											<label for="block1">Block1</label>
											<input type="text" id="block1" name="block1" size="40" value="<strapi:missionsBlock1 />">
											<br>

											<label for="block2">Block2</label>
											<input type="text" id="block2" name="block2" size="40" value="<strapi:missionsBlock2 />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:missionsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:missionsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:missionsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:missionsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:missionsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:missions>
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
		<strapi:missions ID="${ID}">
			<strapi:missionsBlock1 block1 = "${param.block1}" />
			<strapi:missionsBlock2 block2 = "${param.block2}" />
			<strapi:missionsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:missionsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:missionsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:missionsCreatedById createdById = "${param.createdById}" />
			<strapi:missionsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:missions>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>