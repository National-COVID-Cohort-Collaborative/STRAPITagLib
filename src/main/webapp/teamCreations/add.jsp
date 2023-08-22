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
										<legend>TeamCreations</legend>
										<label for="readyHeader">ReadyHeader</label>
										<input type="text" id="readyHeader" name="readyHeader" size="40" value="">
										<br>

										<label for="readyBlock">ReadyBlock</label>
										<input type="text" id="readyBlock" name="readyBlock" size="40" value="">
										<br>

										<label for="leadHeader">LeadHeader</label>
										<input type="text" id="leadHeader" name="leadHeader" size="40" value="">
										<br>

										<label for="leadBlock">LeadBlock</label>
										<input type="text" id="leadBlock" name="leadBlock" size="40" value="">
										<br>

										<label for="responsibilityHeader">ResponsibilityHeader</label>
										<input type="text" id="responsibilityHeader" name="responsibilityHeader" size="40" value="">
										<br>

										<label for="responsibilityBlock">ResponsibilityBlock</label>
										<input type="text" id="responsibilityBlock" name="responsibilityBlock" size="40" value="">
										<br>

										<label for="resourcesHeader">ResourcesHeader</label>
										<input type="text" id="resourcesHeader" name="resourcesHeader" size="40" value="">
										<br>

										<label for="resourcesBlock">ResourcesBlock</label>
										<input type="text" id="resourcesBlock" name="resourcesBlock" size="40" value="">
										<br>

										<label for="guidelineHeader">GuidelineHeader</label>
										<input type="text" id="guidelineHeader" name="guidelineHeader" size="40" value="">
										<br>

										<label for="guidelineBlock">GuidelineBlock</label>
										<input type="text" id="guidelineBlock" name="guidelineBlock" size="40" value="">
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

										<label for="title">Title</label>
										<input type="text" id="title" name="title" size="40" value="">
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
		<strapi:teamCreations>
			<strapi:teamCreationsReadyHeader readyHeader = "${param.readyHeader}" />
			<strapi:teamCreationsReadyBlock readyBlock = "${param.readyBlock}" />
			<strapi:teamCreationsLeadHeader leadHeader = "${param.leadHeader}" />
			<strapi:teamCreationsLeadBlock leadBlock = "${param.leadBlock}" />
			<strapi:teamCreationsResponsibilityHeader responsibilityHeader = "${param.responsibilityHeader}" />
			<strapi:teamCreationsResponsibilityBlock responsibilityBlock = "${param.responsibilityBlock}" />
			<strapi:teamCreationsResourcesHeader resourcesHeader = "${param.resourcesHeader}" />
			<strapi:teamCreationsResourcesBlock resourcesBlock = "${param.resourcesBlock}" />
			<strapi:teamCreationsGuidelineHeader guidelineHeader = "${param.guidelineHeader}" />
			<strapi:teamCreationsGuidelineBlock guidelineBlock = "${param.guidelineBlock}" />
			<strapi:teamCreationsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:teamCreationsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:teamCreationsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:teamCreationsCreatedById createdById = "${param.createdById}" />
			<strapi:teamCreationsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:teamCreationsTitle title = "${param.title}" />
		</strapi:teamCreations>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>