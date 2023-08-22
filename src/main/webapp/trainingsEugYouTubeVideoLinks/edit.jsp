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
								<strapi:trainingsEugYouTubeVideoLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TrainingsEugYouTubeVideoLinks</legend>
											<label for="Trainings">Trainings</label>
											<br>
												<strapi:foreachTrainings var="trainingsIter">
													<strapi:trainings>
													<input type="radio" name="ID" value="<strapi:trainingsID />"><label for="ID"><strapi:trainingsID /></label>
													<br>
													</strapi:trainings>
												</strapi:foreachTrainings>
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="trainingId">TrainingId</label>
											<input type="text" id="trainingId" name="trainingId" size="40" value="<strapi:trainingsEugYouTubeVideoLinksTrainingId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:trainingsEugYouTubeVideoLinksYouTubeVideoId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:trainingsEugYouTubeVideoLinks>
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
								<strapi:trainingsEugYouTubeVideoLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>TrainingsEugYouTubeVideoLinks</legend>
											<label for="Trainings">Trainings</label>
											<br>
												<strapi:foreachTrainings var="trainingsIter">
													<strapi:trainings>
													<input type="radio" name="ID" value="<strapi:trainingsID />"><label for="ID"><strapi:trainingsID /></label>
													<br>
													</strapi:trainings>
												</strapi:foreachTrainings>
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="trainingId">TrainingId</label>
											<input type="text" id="trainingId" name="trainingId" size="40" value="<strapi:trainingsEugYouTubeVideoLinksTrainingId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:trainingsEugYouTubeVideoLinksYouTubeVideoId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:trainingsEugYouTubeVideoLinks>
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
		<fmt:parseNumber var="trainingId" value="${param.trainingId}" />
		<fmt:parseNumber var="youTubeVideoId" value="${param.youTubeVideoId}" />
		<strapi:trainingsEugYouTubeVideoLinks ID="${ID}">
			<strapi:trainingsEugYouTubeVideoLinksTrainingId trainingId = "${param.trainingId}" />
			<strapi:trainingsEugYouTubeVideoLinksYouTubeVideoId youTubeVideoId = "${param.youTubeVideoId}" />
		</strapi:trainingsEugYouTubeVideoLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>