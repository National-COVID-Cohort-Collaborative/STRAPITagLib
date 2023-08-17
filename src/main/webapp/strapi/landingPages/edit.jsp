<%@ include file="../../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit}">
        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:landingPages ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>LandingPages</legend>
											<label for="welcome">Welcome</label>
											<input type="text" id="welcome" name="welcome" size="40" value="<strapi:landingPagesWelcome />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:landingPagesCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:landingPagesUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:landingPagesPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:landingPagesCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:landingPagesUpdatedById />">
											<br>

											<label for="introduction">Introduction</label>
											<input type="text" id="introduction" name="introduction" size="40" value="<strapi:landingPagesIntroduction />">
											<br>

											<label for="researchers">Researchers</label>
											<input type="text" id="researchers" name="researchers" size="40" value="<strapi:landingPagesResearchers />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:landingPages>
                        </div>
                    </div>
                </div>
                <jsp:include page="../../footer.jsp" />
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
		<strapi:landingPages ID="${ID}">
			<strapi:landingPagesWelcome welcome = "${param.welcome}" />
			<strapi:landingPagesCreatedAt createdAt = "${param.createdAt}" />
			<strapi:landingPagesUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:landingPagesPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:landingPagesCreatedById createdById = "${param.createdById}" />
			<strapi:landingPagesUpdatedById updatedById = "${param.updatedById}" />
			<strapi:landingPagesIntroduction introduction = "${param.introduction}" />
			<strapi:landingPagesResearchers researchers = "${param.researchers}" />
		</strapi:landingPages>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>