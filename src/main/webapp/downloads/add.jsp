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
										<legend>Downloads</legend>
										<label for="header">Header</label>
										<input type="text" id="header" name="header" size="40" value="">
										<br>

										<label for="introBlock">IntroBlock</label>
										<input type="text" id="introBlock" name="introBlock" size="40" value="">
										<br>

										<label for="prepareHeader">PrepareHeader</label>
										<input type="text" id="prepareHeader" name="prepareHeader" size="40" value="">
										<br>

										<label for="prepareBlock">PrepareBlock</label>
										<input type="text" id="prepareBlock" name="prepareBlock" size="40" value="">
										<br>

										<label for="submitHeader">SubmitHeader</label>
										<input type="text" id="submitHeader" name="submitHeader" size="40" value="">
										<br>

										<label for="submitBlock1">SubmitBlock1</label>
										<input type="text" id="submitBlock1" name="submitBlock1" size="40" value="">
										<br>

										<label for="submitBlock2">SubmitBlock2</label>
										<input type="text" id="submitBlock2" name="submitBlock2" size="40" value="">
										<br>

										<label for="trackHeader">TrackHeader</label>
										<input type="text" id="trackHeader" name="trackHeader" size="40" value="">
										<br>

										<label for="trackBlock1">TrackBlock1</label>
										<input type="text" id="trackBlock1" name="trackBlock1" size="40" value="">
										<br>

										<label for="trackBlock2">TrackBlock2</label>
										<input type="text" id="trackBlock2" name="trackBlock2" size="40" value="">
										<br>

										<label for="trackBlock3">TrackBlock3</label>
										<input type="text" id="trackBlock3" name="trackBlock3" size="40" value="">
										<br>

										<label for="downloadHeader">DownloadHeader</label>
										<input type="text" id="downloadHeader" name="downloadHeader" size="40" value="">
										<br>

										<label for="downloadBlock1">DownloadBlock1</label>
										<input type="text" id="downloadBlock1" name="downloadBlock1" size="40" value="">
										<br>

										<label for="downloadBlock2">DownloadBlock2</label>
										<input type="text" id="downloadBlock2" name="downloadBlock2" size="40" value="">
										<br>

										<label for="downloadBlock3">DownloadBlock3</label>
										<input type="text" id="downloadBlock3" name="downloadBlock3" size="40" value="">
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
		<strapi:downloads>
			<strapi:downloadsHeader header = "${param.header}" />
			<strapi:downloadsIntroBlock introBlock = "${param.introBlock}" />
			<strapi:downloadsPrepareHeader prepareHeader = "${param.prepareHeader}" />
			<strapi:downloadsPrepareBlock prepareBlock = "${param.prepareBlock}" />
			<strapi:downloadsSubmitHeader submitHeader = "${param.submitHeader}" />
			<strapi:downloadsSubmitBlock1 submitBlock1 = "${param.submitBlock1}" />
			<strapi:downloadsSubmitBlock2 submitBlock2 = "${param.submitBlock2}" />
			<strapi:downloadsTrackHeader trackHeader = "${param.trackHeader}" />
			<strapi:downloadsTrackBlock1 trackBlock1 = "${param.trackBlock1}" />
			<strapi:downloadsTrackBlock2 trackBlock2 = "${param.trackBlock2}" />
			<strapi:downloadsTrackBlock3 trackBlock3 = "${param.trackBlock3}" />
			<strapi:downloadsDownloadHeader downloadHeader = "${param.downloadHeader}" />
			<strapi:downloadsDownloadBlock1 downloadBlock1 = "${param.downloadBlock1}" />
			<strapi:downloadsDownloadBlock2 downloadBlock2 = "${param.downloadBlock2}" />
			<strapi:downloadsDownloadBlock3 downloadBlock3 = "${param.downloadBlock3}" />
			<strapi:downloadsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:downloadsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:downloadsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:downloadsCreatedById createdById = "${param.createdById}" />
			<strapi:downloadsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:downloads>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>