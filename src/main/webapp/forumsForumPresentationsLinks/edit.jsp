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
								<strapi:forumsForumPresentationsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ForumsForumPresentationsLinks</legend>
											<label for="ForumPresentations">ForumPresentations</label>
											<br>
												<strapi:foreachForumPresentations var="forumPresentationsIter">
													<strapi:forumPresentations>
													<input type="radio" name="ID" value="<strapi:forumPresentationsID />"><label for="ID"><strapi:forumPresentationsID /></label>
													<br>
													</strapi:forumPresentations>
												</strapi:foreachForumPresentations>
											<label for="Forums">Forums</label>
											<br>
												<strapi:foreachForums var="forumsIter">
													<strapi:forums>
													<input type="radio" name="ID" value="<strapi:forumsID />"><label for="ID"><strapi:forumsID /></label>
													<br>
													</strapi:forums>
												</strapi:foreachForums>
											<label for="forumId">ForumId</label>
											<input type="text" id="forumId" name="forumId" size="40" value="<strapi:forumsForumPresentationsLinksForumId />">
											<br>

											<label for="forumPresentationId">ForumPresentationId</label>
											<input type="text" id="forumPresentationId" name="forumPresentationId" size="40" value="<strapi:forumsForumPresentationsLinksForumPresentationId />">
											<br>

											<label for="forumPresentationOrder">ForumPresentationOrder</label>
											<input type="text" id="forumPresentationOrder" name="forumPresentationOrder" size="40" value="<strapi:forumsForumPresentationsLinksForumPresentationOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:forumsForumPresentationsLinks>
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
								<strapi:forumsForumPresentationsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>ForumsForumPresentationsLinks</legend>
											<label for="ForumPresentations">ForumPresentations</label>
											<br>
												<strapi:foreachForumPresentations var="forumPresentationsIter">
													<strapi:forumPresentations>
													<input type="radio" name="ID" value="<strapi:forumPresentationsID />"><label for="ID"><strapi:forumPresentationsID /></label>
													<br>
													</strapi:forumPresentations>
												</strapi:foreachForumPresentations>
											<label for="Forums">Forums</label>
											<br>
												<strapi:foreachForums var="forumsIter">
													<strapi:forums>
													<input type="radio" name="ID" value="<strapi:forumsID />"><label for="ID"><strapi:forumsID /></label>
													<br>
													</strapi:forums>
												</strapi:foreachForums>
											<label for="forumId">ForumId</label>
											<input type="text" id="forumId" name="forumId" size="40" value="<strapi:forumsForumPresentationsLinksForumId />">
											<br>

											<label for="forumPresentationId">ForumPresentationId</label>
											<input type="text" id="forumPresentationId" name="forumPresentationId" size="40" value="<strapi:forumsForumPresentationsLinksForumPresentationId />">
											<br>

											<label for="forumPresentationOrder">ForumPresentationOrder</label>
											<input type="text" id="forumPresentationOrder" name="forumPresentationOrder" size="40" value="<strapi:forumsForumPresentationsLinksForumPresentationOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:forumsForumPresentationsLinks>
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
		<fmt:parseNumber var="forumId" value="${param.forumId}" />
		<fmt:parseNumber var="forumPresentationId" value="${param.forumPresentationId}" />
		<strapi:forumsForumPresentationsLinks ID="${ID}">
			<strapi:forumsForumPresentationsLinksForumId forumId = "${param.forumId}" />
			<strapi:forumsForumPresentationsLinksForumPresentationId forumPresentationId = "${param.forumPresentationId}" />
			<strapi:forumsForumPresentationsLinksForumPresentationOrder forumPresentationOrder = "${param.forumPresentationOrder}" />
		</strapi:forumsForumPresentationsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>