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
								<strapi:workstreams ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>Workstreams</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:workstreamsHeader />">
											<br>

											<label for="block1">Block1</label>
											<input type="text" id="block1" name="block1" size="40" value="<strapi:workstreamsBlock1 />">
											<br>

											<label for="block2">Block2</label>
											<input type="text" id="block2" name="block2" size="40" value="<strapi:workstreamsBlock2 />">
											<br>

											<label for="events">Events</label>
											<input type="text" id="events" name="events" size="40" value="<strapi:workstreamsEvents />">
											<br>

											<label for="block3">Block3</label>
											<input type="text" id="block3" name="block3" size="40" value="<strapi:workstreamsBlock3 />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:workstreamsCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:workstreamsUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:workstreamsPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:workstreamsCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:workstreamsUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreams>
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
		<strapi:workstreams ID="${ID}">
			<strapi:workstreamsHeader header = "${param.header}" />
			<strapi:workstreamsBlock1 block1 = "${param.block1}" />
			<strapi:workstreamsBlock2 block2 = "${param.block2}" />
			<strapi:workstreamsEvents events = "${param.events}" />
			<strapi:workstreamsBlock3 block3 = "${param.block3}" />
			<strapi:workstreamsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:workstreamsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:workstreamsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:workstreamsCreatedById createdById = "${param.createdById}" />
			<strapi:workstreamsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:workstreams>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>