<%@ include file="../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit and not empty param.ID}">
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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>PresentationsYouTubeVideosLinks</legend>
										<label for="YouTubeVideos">YouTubeVideos</label>
										<br>
											<strapi:foreachYouTubeVideos var="youTubeVideosIter">
												<strapi:youTubeVideos>
												<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
												<br>
												</strapi:youTubeVideos>
											</strapi:foreachYouTubeVideos>
										<label for="presentationId">PresentationId</label>
										<input type="text" id="presentationId" name="presentationId" size="40" value="">
										<br>

										<label for="youTubeVideoId">YouTubeVideoId</label>
										<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="">
										<br>

										<label for="youTubeVideoOrder">YouTubeVideoOrder</label>
										<input type="text" id="youTubeVideoOrder" name="youTubeVideoOrder" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
										<input type="hidden" name="ID" value="${param.ID}">
									</fieldset>
								</form>
                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${empty param.submit and not empty param.ID}">
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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>PresentationsYouTubeVideosLinks</legend>
										<label for="Presentations">Presentations</label>
										<br>
											<strapi:foreachPresentations var="presentationsIter">
												<strapi:presentations>
												<input type="radio" name="ID" value="<strapi:presentationsID />"><label for="ID"><strapi:presentationsID /></label>
												<br>
												</strapi:presentations>
											</strapi:foreachPresentations>
										<label for="presentationId">PresentationId</label>
										<input type="text" id="presentationId" name="presentationId" size="40" value="">
										<br>

										<label for="youTubeVideoId">YouTubeVideoId</label>
										<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="">
										<br>

										<label for="youTubeVideoOrder">YouTubeVideoOrder</label>
										<input type="text" id="youTubeVideoOrder" name="youTubeVideoOrder" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
										<input type="hidden" name="ID" value="${param.ID}">
									</fieldset>
								</form>
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
		<strapi:presentations ID = "${param.ID}">
		<strapi:youTubeVideos ID = "${param.ID}">
			<strapi:presentationsYouTubeVideosLinks>
				<strapi:presentationsYouTubeVideosLinksPresentationId presentationId = "${param.presentationId}" />
				<strapi:presentationsYouTubeVideosLinksYouTubeVideoId youTubeVideoId = "${param.youTubeVideoId}" />
				<strapi:presentationsYouTubeVideosLinksYouTubeVideoOrder youTubeVideoOrder = "${param.youTubeVideoOrder}" />
			</strapi:presentationsYouTubeVideosLinks>
		</strapi:youTubeVideos>
		</strapi:presentations>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>