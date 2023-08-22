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
								<strapi:tutorialsYouTubeVideosLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TutorialsYouTubeVideosLinks</legend>
											<label for="Tutorials">Tutorials</label>
											<br>
												<strapi:foreachTutorials var="tutorialsIter">
													<strapi:tutorials>
													<input type="radio" name="ID" value="<strapi:tutorialsID />"><label for="ID"><strapi:tutorialsID /></label>
													<br>
													</strapi:tutorials>
												</strapi:foreachTutorials>
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="tutorialId">TutorialId</label>
											<input type="text" id="tutorialId" name="tutorialId" size="40" value="<strapi:tutorialsYouTubeVideosLinksTutorialId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:tutorialsYouTubeVideosLinksYouTubeVideoId />">
											<br>

											<label for="youTubeVideoOrder">YouTubeVideoOrder</label>
											<input type="text" id="youTubeVideoOrder" name="youTubeVideoOrder" size="40" value="<strapi:tutorialsYouTubeVideosLinksYouTubeVideoOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tutorialsYouTubeVideosLinks>
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
								<strapi:tutorialsYouTubeVideosLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TutorialsYouTubeVideosLinks</legend>
											<label for="Tutorials">Tutorials</label>
											<br>
												<strapi:foreachTutorials var="tutorialsIter">
													<strapi:tutorials>
													<input type="radio" name="ID" value="<strapi:tutorialsID />"><label for="ID"><strapi:tutorialsID /></label>
													<br>
													</strapi:tutorials>
												</strapi:foreachTutorials>
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="tutorialId">TutorialId</label>
											<input type="text" id="tutorialId" name="tutorialId" size="40" value="<strapi:tutorialsYouTubeVideosLinksTutorialId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:tutorialsYouTubeVideosLinksYouTubeVideoId />">
											<br>

											<label for="youTubeVideoOrder">YouTubeVideoOrder</label>
											<input type="text" id="youTubeVideoOrder" name="youTubeVideoOrder" size="40" value="<strapi:tutorialsYouTubeVideosLinksYouTubeVideoOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:tutorialsYouTubeVideosLinks>
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
		<fmt:parseNumber var="tutorialId" value="${param.tutorialId}" />
		<fmt:parseNumber var="youTubeVideoId" value="${param.youTubeVideoId}" />
		<strapi:tutorialsYouTubeVideosLinks ID="${ID}">
			<strapi:tutorialsYouTubeVideosLinksTutorialId tutorialId = "${param.tutorialId}" />
			<strapi:tutorialsYouTubeVideosLinksYouTubeVideoId youTubeVideoId = "${param.youTubeVideoId}" />
			<strapi:tutorialsYouTubeVideosLinksYouTubeVideoOrder youTubeVideoOrder = "${param.youTubeVideoOrder}" />
		</strapi:tutorialsYouTubeVideosLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>