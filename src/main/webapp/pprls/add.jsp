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
										<legend>Pprls</legend>
										<label for="header">Header</label>
										<input type="text" id="header" name="header" size="40" value="">
										<br>

										<label for="subheader">Subheader</label>
										<input type="text" id="subheader" name="subheader" size="40" value="">
										<br>

										<label for="start">Start</label>
										<input type="text" id="start" name="start" size="40" value="">
										<br>

										<label for="introHeader">IntroHeader</label>
										<input type="text" id="introHeader" name="introHeader" size="40" value="">
										<br>

										<label for="introBlock">IntroBlock</label>
										<input type="text" id="introBlock" name="introBlock" size="40" value="">
										<br>

										<label for="participationHeader">ParticipationHeader</label>
										<input type="text" id="participationHeader" name="participationHeader" size="40" value="">
										<br>

										<label for="participationBlock1">ParticipationBlock1</label>
										<input type="text" id="participationBlock1" name="participationBlock1" size="40" value="">
										<br>

										<label for="participationBlock2">ParticipationBlock2</label>
										<input type="text" id="participationBlock2" name="participationBlock2" size="40" value="">
										<br>

										<label for="participationBlock3">ParticipationBlock3</label>
										<input type="text" id="participationBlock3" name="participationBlock3" size="40" value="">
										<br>

										<label for="participationBlock4">ParticipationBlock4</label>
										<input type="text" id="participationBlock4" name="participationBlock4" size="40" value="">
										<br>

										<label for="participationBlock5">ParticipationBlock5</label>
										<input type="text" id="participationBlock5" name="participationBlock5" size="40" value="">
										<br>

										<label for="governanceHeader">GovernanceHeader</label>
										<input type="text" id="governanceHeader" name="governanceHeader" size="40" value="">
										<br>

										<label for="governanceBlock1">GovernanceBlock1</label>
										<input type="text" id="governanceBlock1" name="governanceBlock1" size="40" value="">
										<br>

										<label for="governanceBlock2">GovernanceBlock2</label>
										<input type="text" id="governanceBlock2" name="governanceBlock2" size="40" value="">
										<br>

										<label for="governanceBlock3">GovernanceBlock3</label>
										<input type="text" id="governanceBlock3" name="governanceBlock3" size="40" value="">
										<br>

										<label for="faqHeader">FaqHeader</label>
										<input type="text" id="faqHeader" name="faqHeader" size="40" value="">
										<br>

										<label for="glossaryHeader">GlossaryHeader</label>
										<input type="text" id="glossaryHeader" name="glossaryHeader" size="40" value="">
										<br>

										<label for="glossaryBlock">GlossaryBlock</label>
										<input type="text" id="glossaryBlock" name="glossaryBlock" size="40" value="">
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

										<label for="faqBlock">FaqBlock</label>
										<input type="text" id="faqBlock" name="faqBlock" size="40" value="">
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
		<strapi:pprls>
			<strapi:pprlsHeader header = "${param.header}" />
			<strapi:pprlsSubheader subheader = "${param.subheader}" />
			<strapi:pprlsStart start = "${param.start}" />
			<strapi:pprlsIntroHeader introHeader = "${param.introHeader}" />
			<strapi:pprlsIntroBlock introBlock = "${param.introBlock}" />
			<strapi:pprlsParticipationHeader participationHeader = "${param.participationHeader}" />
			<strapi:pprlsParticipationBlock1 participationBlock1 = "${param.participationBlock1}" />
			<strapi:pprlsParticipationBlock2 participationBlock2 = "${param.participationBlock2}" />
			<strapi:pprlsParticipationBlock3 participationBlock3 = "${param.participationBlock3}" />
			<strapi:pprlsParticipationBlock4 participationBlock4 = "${param.participationBlock4}" />
			<strapi:pprlsParticipationBlock5 participationBlock5 = "${param.participationBlock5}" />
			<strapi:pprlsGovernanceHeader governanceHeader = "${param.governanceHeader}" />
			<strapi:pprlsGovernanceBlock1 governanceBlock1 = "${param.governanceBlock1}" />
			<strapi:pprlsGovernanceBlock2 governanceBlock2 = "${param.governanceBlock2}" />
			<strapi:pprlsGovernanceBlock3 governanceBlock3 = "${param.governanceBlock3}" />
			<strapi:pprlsFaqHeader faqHeader = "${param.faqHeader}" />
			<strapi:pprlsGlossaryHeader glossaryHeader = "${param.glossaryHeader}" />
			<strapi:pprlsGlossaryBlock glossaryBlock = "${param.glossaryBlock}" />
			<strapi:pprlsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:pprlsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:pprlsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:pprlsCreatedById createdById = "${param.createdById}" />
			<strapi:pprlsUpdatedById updatedById = "${param.updatedById}" />
			<strapi:pprlsFaqBlock faqBlock = "${param.faqBlock}" />
		</strapi:pprls>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>