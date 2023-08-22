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
								<strapi:workstreamsYouTubeVideoLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamsYouTubeVideoLinks</legend>
											<label for="Workstreams">Workstreams</label>
											<br>
												<strapi:foreachWorkstreams var="workstreamsIter">
													<strapi:workstreams>
													<input type="radio" name="ID" value="<strapi:workstreamsID />"><label for="ID"><strapi:workstreamsID /></label>
													<br>
													</strapi:workstreams>
												</strapi:foreachWorkstreams>
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="workstreamId">WorkstreamId</label>
											<input type="text" id="workstreamId" name="workstreamId" size="40" value="<strapi:workstreamsYouTubeVideoLinksWorkstreamId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:workstreamsYouTubeVideoLinksYouTubeVideoId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamsYouTubeVideoLinks>
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
								<strapi:workstreamsYouTubeVideoLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamsYouTubeVideoLinks</legend>
											<label for="Workstreams">Workstreams</label>
											<br>
												<strapi:foreachWorkstreams var="workstreamsIter">
													<strapi:workstreams>
													<input type="radio" name="ID" value="<strapi:workstreamsID />"><label for="ID"><strapi:workstreamsID /></label>
													<br>
													</strapi:workstreams>
												</strapi:foreachWorkstreams>
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="workstreamId">WorkstreamId</label>
											<input type="text" id="workstreamId" name="workstreamId" size="40" value="<strapi:workstreamsYouTubeVideoLinksWorkstreamId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:workstreamsYouTubeVideoLinksYouTubeVideoId />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamsYouTubeVideoLinks>
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
		<fmt:parseNumber var="workstreamId" value="${param.workstreamId}" />
		<fmt:parseNumber var="youTubeVideoId" value="${param.youTubeVideoId}" />
		<strapi:workstreamsYouTubeVideoLinks ID="${ID}">
			<strapi:workstreamsYouTubeVideoLinksWorkstreamId workstreamId = "${param.workstreamId}" />
			<strapi:workstreamsYouTubeVideoLinksYouTubeVideoId youTubeVideoId = "${param.youTubeVideoId}" />
		</strapi:workstreamsYouTubeVideoLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>