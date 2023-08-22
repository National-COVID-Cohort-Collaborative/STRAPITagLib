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
										<legend>ExternalDatasetsYouTubeVideoLinks</legend>
										<label for="YouTubeVideos">YouTubeVideos</label>
										<br>
											<strapi:foreachYouTubeVideos var="youTubeVideosIter">
												<strapi:youTubeVideos>
												<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
												<br>
												</strapi:youTubeVideos>
											</strapi:foreachYouTubeVideos>
										<label for="externalDatasetId">ExternalDatasetId</label>
										<input type="text" id="externalDatasetId" name="externalDatasetId" size="40" value="">
										<br>

										<label for="youTubeVideoId">YouTubeVideoId</label>
										<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="">
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
										<legend>ExternalDatasetsYouTubeVideoLinks</legend>
										<label for="ExternalDatasets">ExternalDatasets</label>
										<br>
											<strapi:foreachExternalDatasets var="externalDatasetsIter">
												<strapi:externalDatasets>
												<input type="radio" name="ID" value="<strapi:externalDatasetsID />"><label for="ID"><strapi:externalDatasetsID /></label>
												<br>
												</strapi:externalDatasets>
											</strapi:foreachExternalDatasets>
										<label for="externalDatasetId">ExternalDatasetId</label>
										<input type="text" id="externalDatasetId" name="externalDatasetId" size="40" value="">
										<br>

										<label for="youTubeVideoId">YouTubeVideoId</label>
										<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="">
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
		<strapi:externalDatasets ID = "${param.ID}">
		<strapi:youTubeVideos ID = "${param.ID}">
			<strapi:externalDatasetsYouTubeVideoLinks>
				<strapi:externalDatasetsYouTubeVideoLinksExternalDatasetId externalDatasetId = "${param.externalDatasetId}" />
				<strapi:externalDatasetsYouTubeVideoLinksYouTubeVideoId youTubeVideoId = "${param.youTubeVideoId}" />
			</strapi:externalDatasetsYouTubeVideoLinks>
		</strapi:youTubeVideos>
		</strapi:externalDatasets>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>