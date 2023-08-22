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
								<strapi:youTubeVideos ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>YouTubeVideos</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:youTubeVideosHeader />">
											<br>

											<label for="url">Url</label>
											<input type="text" id="url" name="url" size="40" value="<strapi:youTubeVideosUrl />">
											<br>

											<label for="width">Width</label>
											<input type="text" id="width" name="width" size="40" value="<strapi:youTubeVideosWidth />">
											<br>

											<label for="height">Height</label>
											<input type="text" id="height" name="height" size="40" value="<strapi:youTubeVideosHeight />">
											<br>

											<label for="footer">Footer</label>
											<input type="text" id="footer" name="footer" size="40" value="<strapi:youTubeVideosFooter />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:youTubeVideosCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:youTubeVideosUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:youTubeVideosPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:youTubeVideosCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:youTubeVideosUpdatedById />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:youTubeVideos>
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
		<fmt:parseNumber var="width" value="${param.width}" />
		<fmt:parseNumber var="height" value="${param.height}" />
		<fmt:parseNumber var="createdById" value="${param.createdById}" />
		<fmt:parseNumber var="updatedById" value="${param.updatedById}" />
		<strapi:youTubeVideos ID="${ID}">
			<strapi:youTubeVideosHeader header = "${param.header}" />
			<strapi:youTubeVideosUrl url = "${param.url}" />
			<strapi:youTubeVideosWidth width = "${param.width}" />
			<strapi:youTubeVideosHeight height = "${param.height}" />
			<strapi:youTubeVideosFooter footer = "${param.footer}" />
			<strapi:youTubeVideosCreatedAt createdAt = "${param.createdAt}" />
			<strapi:youTubeVideosUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:youTubeVideosPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:youTubeVideosCreatedById createdById = "${param.createdById}" />
			<strapi:youTubeVideosUpdatedById updatedById = "${param.updatedById}" />
		</strapi:youTubeVideos>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>