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
								<strapi:brochures ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Brochures</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:brochuresHeader />">
											<br>

											<label for="pdfLinkHeader">PdfLinkHeader</label>
											<input type="text" id="pdfLinkHeader" name="pdfLinkHeader" size="40" value="<strapi:brochuresPdfLinkHeader />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:brochuresCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:brochuresUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:brochuresPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:brochuresCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:brochuresUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:brochures>
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
		<strapi:brochures ID="${ID}">
			<strapi:brochuresHeader header = "${param.header}" />
			<strapi:brochuresPdfLinkHeader pdfLinkHeader = "${param.pdfLinkHeader}" />
			<strapi:brochuresCreatedAt createdAt = "${param.createdAt}" />
			<strapi:brochuresUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:brochuresPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:brochuresCreatedById createdById = "${param.createdById}" />
			<strapi:brochuresUpdatedById updatedById = "${param.updatedById}" />
		</strapi:brochures>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>