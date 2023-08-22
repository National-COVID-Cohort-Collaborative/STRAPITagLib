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
								<strapi:abouts ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Abouts</legend>
											<label for="block1">Block1</label>
											<input type="text" id="block1" name="block1" size="40" value="<strapi:aboutsBlock1 />">
											<br>

											<label for="block2">Block2</label>
											<input type="text" id="block2" name="block2" size="40" value="<strapi:aboutsBlock2 />">
											<br>

											<label for="block3">Block3</label>
											<input type="text" id="block3" name="block3" size="40" value="<strapi:aboutsBlock3 />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:aboutsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:aboutsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:aboutsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:aboutsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:aboutsUpdatedById />">
											<br>

											<label for="block4">Block4</label>
											<input type="text" id="block4" name="block4" size="40" value="<strapi:aboutsBlock4 />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:abouts>
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
		<strapi:abouts ID="${ID}">
			<strapi:aboutsBlock1 block1 = "${param.block1}" />
			<strapi:aboutsBlock2 block2 = "${param.block2}" />
			<strapi:aboutsBlock3 block3 = "${param.block3}" />
			<strapi:aboutsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:aboutsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:aboutsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:aboutsCreatedById createdById = "${param.createdById}" />
			<strapi:aboutsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:aboutsBlock4 block4 = "${param.block4}" />
		</strapi:abouts>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>