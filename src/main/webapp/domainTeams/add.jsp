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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>DomainTeams</legend>
										<label for="name">Name</label>
										<input type="text" id="name" name="name" size="40" value="">
										<br>

										<label for="description">Description</label>
										<input type="text" id="description" name="description" size="40" value="">
										<br>

										<label for="createdAt">CreatedAt</label>
										<input type="text" id="createdAt" name="createdAt" size="40" value="">
										<br>

										<label for="updatedAt">UpdatedAt</label>
										<input type="text" id="updatedAt" name="updatedAt" size="40" value="">
										<br>

										<label for="publishedAt">PublishedAt</label>
										<input type="text" id="publishedAt" name="publishedAt" size="40" value="">
										<br>

										<label for="createdById">CreatedById</label>
										<input type="text" id="createdById" name="createdById" size="40" value="">
										<br>

										<label for="updatedById">UpdatedById</label>
										<input type="text" id="updatedById" name="updatedById" size="40" value="">
										<br>

										<label for="summary">Summary</label>
										<input type="text" id="summary" name="summary" size="40" value="">
										<br>

										<label for="supplementalInformation">SupplementalInformation</label>
										<input type="text" id="supplementalInformation" name="supplementalInformation" size="40" value="">
										<br>

										<label for="googleDriveUrl">GoogleDriveUrl</label>
										<input type="text" id="googleDriveUrl" name="googleDriveUrl" size="40" value="">
										<br>

										<label for="googleDriveLinkText">GoogleDriveLinkText</label>
										<input type="text" id="googleDriveLinkText" name="googleDriveLinkText" size="40" value="">
										<br>

										<label for="googleGroupEmail">GoogleGroupEmail</label>
										<input type="text" id="googleGroupEmail" name="googleGroupEmail" size="40" value="">
										<br>

										<label for="joinUrl">JoinUrl</label>
										<input type="text" id="joinUrl" name="joinUrl" size="40" value="">
										<br>

										<label for="joinLinkText">JoinLinkText</label>
										<input type="text" id="joinLinkText" name="joinLinkText" size="40" value="">
										<br>

										<label for="slackUrl">SlackUrl</label>
										<input type="text" id="slackUrl" name="slackUrl" size="40" value="">
										<br>

										<label for="slackLinkText">SlackLinkText</label>
										<input type="text" id="slackLinkText" name="slackLinkText" size="40" value="">
										<br>

										<label for="crossCutting">CrossCutting</label>
										<input type="text" id="crossCutting" name="crossCutting" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
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
		<strapi:domainTeams>
			<strapi:domainTeamsName name = "${param.name}" />
			<strapi:domainTeamsDescription description = "${param.description}" />
			<strapi:domainTeamsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:domainTeamsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:domainTeamsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:domainTeamsCreatedById createdById = "${param.createdById}" />
			<strapi:domainTeamsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:domainTeamsSummary summary = "${param.summary}" />
			<strapi:domainTeamsSupplementalInformation supplementalInformation = "${param.supplementalInformation}" />
			<strapi:domainTeamsGoogleDriveUrl googleDriveUrl = "${param.googleDriveUrl}" />
			<strapi:domainTeamsGoogleDriveLinkText googleDriveLinkText = "${param.googleDriveLinkText}" />
			<strapi:domainTeamsGoogleGroupEmail googleGroupEmail = "${param.googleGroupEmail}" />
			<strapi:domainTeamsJoinUrl joinUrl = "${param.joinUrl}" />
			<strapi:domainTeamsJoinLinkText joinLinkText = "${param.joinLinkText}" />
			<strapi:domainTeamsSlackUrl slackUrl = "${param.slackUrl}" />
			<strapi:domainTeamsSlackLinkText slackLinkText = "${param.slackLinkText}" />
			<strapi:domainTeamsCrossCutting crossCutting = "${param.crossCutting}" />
		</strapi:domainTeams>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>