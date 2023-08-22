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
								<strapi:policies ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Policies</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:policiesHeader />">
											<br>

											<label for="introBlock">IntroBlock</label>
											<input type="text" id="introBlock" name="introBlock" size="40" value="<strapi:policiesIntroBlock />">
											<br>

											<label for="resourceHeader">ResourceHeader</label>
											<input type="text" id="resourceHeader" name="resourceHeader" size="40" value="<strapi:policiesResourceHeader />">
											<br>

											<label for="institutionHeader">InstitutionHeader</label>
											<input type="text" id="institutionHeader" name="institutionHeader" size="40" value="<strapi:policiesInstitutionHeader />">
											<br>

											<label for="userHeader">UserHeader</label>
											<input type="text" id="userHeader" name="userHeader" size="40" value="<strapi:policiesUserHeader />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:policiesCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:policiesUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:policiesPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:policiesCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:policiesUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:policies>
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
		<strapi:policies ID="${ID}">
			<strapi:policiesHeader header = "${param.header}" />
			<strapi:policiesIntroBlock introBlock = "${param.introBlock}" />
			<strapi:policiesResourceHeader resourceHeader = "${param.resourceHeader}" />
			<strapi:policiesInstitutionHeader institutionHeader = "${param.institutionHeader}" />
			<strapi:policiesUserHeader userHeader = "${param.userHeader}" />
			<strapi:policiesCreatedAt createdAt = "${param.createdAt}" />
			<strapi:policiesUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:policiesPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:policiesCreatedById createdById = "${param.createdById}" />
			<strapi:policiesUpdatedById updatedById = "${param.updatedById}" />
		</strapi:policies>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>