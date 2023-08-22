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
										<legend>ForumPresentations</legend>
										<label for="topic">Topic</label>
										<input type="text" id="topic" name="topic" size="40" value="">
										<br>

										<label for="presenters">Presenters</label>
										<input type="text" id="presenters" name="presenters" size="40" value="">
										<br>

										<label for="date">Date</label>
										<input type="text" id="date" name="date" size="40" value="">
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
		<strapi:forumPresentations>
			<strapi:forumPresentationsTopic topic = "${param.topic}" />
			<strapi:forumPresentationsPresenters presenters = "${param.presenters}" />
			<strapi:forumPresentationsDate date = "${param.date}" />
			<strapi:forumPresentationsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:forumPresentationsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:forumPresentationsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:forumPresentationsCreatedById createdById = "${param.createdById}" />
			<strapi:forumPresentationsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:forumPresentations>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>