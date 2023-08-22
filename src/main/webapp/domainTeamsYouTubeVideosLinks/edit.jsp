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
								<strapi:domainTeamsYouTubeVideosLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>DomainTeamsYouTubeVideosLinks</legend>
											<label for="DomainTeams">DomainTeams</label>
											<br>
												<strapi:foreachDomainTeams var="domainTeamsIter">
													<strapi:domainTeams>
													<input type="radio" name="ID" value="<strapi:domainTeamsID />"><label for="ID"><strapi:domainTeamsID /></label>
													<br>
													</strapi:domainTeams>
												</strapi:foreachDomainTeams>
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="domainTeamId">DomainTeamId</label>
											<input type="text" id="domainTeamId" name="domainTeamId" size="40" value="<strapi:domainTeamsYouTubeVideosLinksDomainTeamId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId />">
											<br>

											<label for="youTubeVideoOrder">YouTubeVideoOrder</label>
											<input type="text" id="youTubeVideoOrder" name="youTubeVideoOrder" size="40" value="<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:domainTeamsYouTubeVideosLinks>
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
								<strapi:domainTeamsYouTubeVideosLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>DomainTeamsYouTubeVideosLinks</legend>
											<label for="DomainTeams">DomainTeams</label>
											<br>
												<strapi:foreachDomainTeams var="domainTeamsIter">
													<strapi:domainTeams>
													<input type="radio" name="ID" value="<strapi:domainTeamsID />"><label for="ID"><strapi:domainTeamsID /></label>
													<br>
													</strapi:domainTeams>
												</strapi:foreachDomainTeams>
											<label for="YouTubeVideos">YouTubeVideos</label>
											<br>
												<strapi:foreachYouTubeVideos var="youTubeVideosIter">
													<strapi:youTubeVideos>
													<input type="radio" name="ID" value="<strapi:youTubeVideosID />"><label for="ID"><strapi:youTubeVideosID /></label>
													<br>
													</strapi:youTubeVideos>
												</strapi:foreachYouTubeVideos>
											<label for="domainTeamId">DomainTeamId</label>
											<input type="text" id="domainTeamId" name="domainTeamId" size="40" value="<strapi:domainTeamsYouTubeVideosLinksDomainTeamId />">
											<br>

											<label for="youTubeVideoId">YouTubeVideoId</label>
											<input type="text" id="youTubeVideoId" name="youTubeVideoId" size="40" value="<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId />">
											<br>

											<label for="youTubeVideoOrder">YouTubeVideoOrder</label>
											<input type="text" id="youTubeVideoOrder" name="youTubeVideoOrder" size="40" value="<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:domainTeamsYouTubeVideosLinks>
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
		<fmt:parseNumber var="domainTeamId" value="${param.domainTeamId}" />
		<fmt:parseNumber var="youTubeVideoId" value="${param.youTubeVideoId}" />
		<strapi:domainTeamsYouTubeVideosLinks ID="${ID}">
			<strapi:domainTeamsYouTubeVideosLinksDomainTeamId domainTeamId = "${param.domainTeamId}" />
			<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoId youTubeVideoId = "${param.youTubeVideoId}" />
			<strapi:domainTeamsYouTubeVideosLinksYouTubeVideoOrder youTubeVideoOrder = "${param.youTubeVideoOrder}" />
		</strapi:domainTeamsYouTubeVideosLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>