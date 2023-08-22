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
								<strapi:bios ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Bios</legend>
											<label for="firstName">FirstName</label>
											<input type="text" id="firstName" name="firstName" size="40" value="<strapi:biosFirstName />">
											<br>

											<label for="lastName">LastName</label>
											<input type="text" id="lastName" name="lastName" size="40" value="<strapi:biosLastName />">
											<br>

											<label for="title">Title</label>
											<input type="text" id="title" name="title" size="40" value="<strapi:biosTitle />">
											<br>

											<label for="organization">Organization</label>
											<input type="text" id="organization" name="organization" size="40" value="<strapi:biosOrganization />">
											<br>

											<label for="organizationUrl">OrganizationUrl</label>
											<input type="text" id="organizationUrl" name="organizationUrl" size="40" value="<strapi:biosOrganizationUrl />">
											<br>

											<label for="website">Website</label>
											<input type="text" id="website" name="website" size="40" value="<strapi:biosWebsite />">
											<br>

											<label for="orcid">Orcid</label>
											<input type="text" id="orcid" name="orcid" size="40" value="<strapi:biosOrcid />">
											<br>

											<label for="email">Email</label>
											<input type="text" id="email" name="email" size="40" value="<strapi:biosEmail />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:biosCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:biosUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:biosPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:biosCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:biosUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:bios>
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
		<strapi:bios ID="${ID}">
			<strapi:biosFirstName firstName = "${param.firstName}" />
			<strapi:biosLastName lastName = "${param.lastName}" />
			<strapi:biosTitle title = "${param.title}" />
			<strapi:biosOrganization organization = "${param.organization}" />
			<strapi:biosOrganizationUrl organizationUrl = "${param.organizationUrl}" />
			<strapi:biosWebsite website = "${param.website}" />
			<strapi:biosOrcid orcid = "${param.orcid}" />
			<strapi:biosEmail email = "${param.email}" />
			<strapi:biosCreatedAt createdAt = "${param.createdAt}" />
			<strapi:biosUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:biosPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:biosCreatedById createdById = "${param.createdById}" />
			<strapi:biosUpdatedById updatedById = "${param.updatedById}" />
		</strapi:bios>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>