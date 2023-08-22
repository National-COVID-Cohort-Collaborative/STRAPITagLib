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
								<strapi:onboardings ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Onboardings</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:onboardingsHeader />">
											<br>

											<label for="subheader">Subheader</label>
											<input type="text" id="subheader" name="subheader" size="40" value="<strapi:onboardingsSubheader />">
											<br>

											<label for="registrationHeader">RegistrationHeader</label>
											<input type="text" id="registrationHeader" name="registrationHeader" size="40" value="<strapi:onboardingsRegistrationHeader />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:onboardingsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:onboardingsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:onboardingsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:onboardingsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:onboardingsUpdatedById />">
											<br>

											<label for="block">Block</label>
											<input type="text" id="block" name="block" size="40" value="<strapi:onboardingsBlock />">
											<br>

											<label for="block2">Block2</label>
											<input type="text" id="block2" name="block2" size="40" value="<strapi:onboardingsBlock2 />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:onboardings>
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
		<strapi:onboardings ID="${ID}">
			<strapi:onboardingsHeader header = "${param.header}" />
			<strapi:onboardingsSubheader subheader = "${param.subheader}" />
			<strapi:onboardingsRegistrationHeader registrationHeader = "${param.registrationHeader}" />
			<strapi:onboardingsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:onboardingsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:onboardingsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:onboardingsCreatedById createdById = "${param.createdById}" />
			<strapi:onboardingsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:onboardingsBlock block = "${param.block}" />
			<strapi:onboardingsBlock2 block2 = "${param.block2}" />
		</strapi:onboardings>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>