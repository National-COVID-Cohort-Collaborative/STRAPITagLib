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
										<legend>Trainings</legend>
										<label for="header">Header</label>
										<input type="text" id="header" name="header" size="40" value="">
										<br>

										<label for="block1">Block1</label>
										<input type="text" id="block1" name="block1" size="40" value="">
										<br>

										<label for="portalHeader">PortalHeader</label>
										<input type="text" id="portalHeader" name="portalHeader" size="40" value="">
										<br>

										<label for="portalBlock">PortalBlock</label>
										<input type="text" id="portalBlock" name="portalBlock" size="40" value="">
										<br>

										<label for="communityHeader">CommunityHeader</label>
										<input type="text" id="communityHeader" name="communityHeader" size="40" value="">
										<br>

										<label for="communityBlock">CommunityBlock</label>
										<input type="text" id="communityBlock" name="communityBlock" size="40" value="">
										<br>

										<label for="eugHeader">EugHeader</label>
										<input type="text" id="eugHeader" name="eugHeader" size="40" value="">
										<br>

										<label for="eugBlock">EugBlock</label>
										<input type="text" id="eugBlock" name="eugBlock" size="40" value="">
										<br>

										<label for="eugBlock2">EugBlock2</label>
										<input type="text" id="eugBlock2" name="eugBlock2" size="40" value="">
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

										<label for="sharedResourceHeader">SharedResourceHeader</label>
										<input type="text" id="sharedResourceHeader" name="sharedResourceHeader" size="40" value="">
										<br>

										<label for="sharedResourceBlock">SharedResourceBlock</label>
										<input type="text" id="sharedResourceBlock" name="sharedResourceBlock" size="40" value="">
										<br>

										<label for="additionalResourcesHeader">AdditionalResourcesHeader</label>
										<input type="text" id="additionalResourcesHeader" name="additionalResourcesHeader" size="40" value="">
										<br>

										<label for="additionalResourcesBlock">AdditionalResourcesBlock</label>
										<input type="text" id="additionalResourcesBlock" name="additionalResourcesBlock" size="40" value="">
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
		<strapi:trainings>
			<strapi:trainingsHeader header = "${param.header}" />
			<strapi:trainingsBlock1 block1 = "${param.block1}" />
			<strapi:trainingsPortalHeader portalHeader = "${param.portalHeader}" />
			<strapi:trainingsPortalBlock portalBlock = "${param.portalBlock}" />
			<strapi:trainingsCommunityHeader communityHeader = "${param.communityHeader}" />
			<strapi:trainingsCommunityBlock communityBlock = "${param.communityBlock}" />
			<strapi:trainingsEugHeader eugHeader = "${param.eugHeader}" />
			<strapi:trainingsEugBlock eugBlock = "${param.eugBlock}" />
			<strapi:trainingsEugBlock2 eugBlock2 = "${param.eugBlock2}" />
			<strapi:trainingsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:trainingsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:trainingsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:trainingsCreatedById createdById = "${param.createdById}" />
			<strapi:trainingsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:trainingsSharedResourceHeader sharedResourceHeader = "${param.sharedResourceHeader}" />
			<strapi:trainingsSharedResourceBlock sharedResourceBlock = "${param.sharedResourceBlock}" />
			<strapi:trainingsAdditionalResourcesHeader additionalResourcesHeader = "${param.additionalResourcesHeader}" />
			<strapi:trainingsAdditionalResourcesBlock additionalResourcesBlock = "${param.additionalResourcesBlock}" />
		</strapi:trainings>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>