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
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:presentationsYouTubeVideosLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
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
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="presentationId">PresentationId</label>
											<input type="text" id="presentationId" name="presentationId" size="40" value="<strapi:presentationsYouTubeVideosLinksPresentationId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:presentationsYouTubeVideosLinksYouTubeVideoId />">
											<br>

											<label for="youTubeVideoOrder">YouTubeVideoOrder</label>
											<input type="text" id="youTubeVideoOrder" name="youTubeVideoOrder" size="40" value="<strapi:presentationsYouTubeVideosLinksYouTubeVideoOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:presentationsYouTubeVideosLinks>
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
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:presentationsYouTubeVideosLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
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
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="presentationId">PresentationId</label>
											<input type="text" id="presentationId" name="presentationId" size="40" value="<strapi:presentationsYouTubeVideosLinksPresentationId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:presentationsYouTubeVideosLinksYouTubeVideoId />">
											<br>

											<label for="youTubeVideoOrder">YouTubeVideoOrder</label>
											<input type="text" id="youTubeVideoOrder" name="youTubeVideoOrder" size="40" value="<strapi:presentationsYouTubeVideosLinksYouTubeVideoOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:presentationsYouTubeVideosLinks>
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
		<fmt:parseNumber var="presentationId" value="${param.presentationId}" />
		<fmt:parseNumber var="youTubeVideoId" value="${param.youTubeVideoId}" />
		<strapi:presentationsYouTubeVideosLinks ID="${ID}">
			<strapi:presentationsYouTubeVideosLinksPresentationId presentationId = "${param.presentationId}" />
			<strapi:presentationsYouTubeVideosLinksYouTubeVideoId youTubeVideoId = "${param.youTubeVideoId}" />
			<strapi:presentationsYouTubeVideosLinksYouTubeVideoOrder youTubeVideoOrder = "${param.youTubeVideoOrder}" />
		</strapi:presentationsYouTubeVideosLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>