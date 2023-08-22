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
								<strapi:footers ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Footers</legend>
											<label for="grantCite">GrantCite</label>
											<input type="text" id="grantCite" name="grantCite" size="40" value="<strapi:footersGrantCite />">
											<br>

											<label for="credits">Credits</label>
											<input type="text" id="credits" name="credits" size="40" value="<strapi:footersCredits />">
											<br>

											<label for="signup">Signup</label>
											<input type="text" id="signup" name="signup" size="40" value="<strapi:footersSignup />">
											<br>

											<label for="social">Social</label>
											<input type="text" id="social" name="social" size="40" value="<strapi:footersSocial />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:footersCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:footersUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:footersPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:footersCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:footersUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:footers>
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
		<strapi:footers ID="${ID}">
			<strapi:footersGrantCite grantCite = "${param.grantCite}" />
			<strapi:footersCredits credits = "${param.credits}" />
			<strapi:footersSignup signup = "${param.signup}" />
			<strapi:footersSocial social = "${param.social}" />
			<strapi:footersCreatedAt createdAt = "${param.createdAt}" />
			<strapi:footersUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:footersPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:footersCreatedById createdById = "${param.createdById}" />
			<strapi:footersUpdatedById updatedById = "${param.updatedById}" />
		</strapi:footers>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>