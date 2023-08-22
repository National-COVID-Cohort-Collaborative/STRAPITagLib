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
										<legend>FaqLists</legend>
										<label for="header">Header</label>
										<input type="text" id="header" name="header" size="40" value="">
										<br>

										<label for="subheader">Subheader</label>
										<input type="text" id="subheader" name="subheader" size="40" value="">
										<br>

										<label for="introBlock">IntroBlock</label>
										<input type="text" id="introBlock" name="introBlock" size="40" value="">
										<br>

										<label for="enclaveHeader">EnclaveHeader</label>
										<input type="text" id="enclaveHeader" name="enclaveHeader" size="40" value="">
										<br>

										<label for="domainHeader">DomainHeader</label>
										<input type="text" id="domainHeader" name="domainHeader" size="40" value="">
										<br>

										<label for="phenotypeHeader">PhenotypeHeader</label>
										<input type="text" id="phenotypeHeader" name="phenotypeHeader" size="40" value="">
										<br>

										<label for="harmonizationHeader">HarmonizationHeader</label>
										<input type="text" id="harmonizationHeader" name="harmonizationHeader" size="40" value="">
										<br>

										<label for="analyticsHeader">AnalyticsHeader</label>
										<input type="text" id="analyticsHeader" name="analyticsHeader" size="40" value="">
										<br>

										<label for="syntheticHeader">SyntheticHeader</label>
										<input type="text" id="syntheticHeader" name="syntheticHeader" size="40" value="">
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
		<strapi:faqLists>
			<strapi:faqListsHeader header = "${param.header}" />
			<strapi:faqListsSubheader subheader = "${param.subheader}" />
			<strapi:faqListsIntroBlock introBlock = "${param.introBlock}" />
			<strapi:faqListsEnclaveHeader enclaveHeader = "${param.enclaveHeader}" />
			<strapi:faqListsDomainHeader domainHeader = "${param.domainHeader}" />
			<strapi:faqListsPhenotypeHeader phenotypeHeader = "${param.phenotypeHeader}" />
			<strapi:faqListsHarmonizationHeader harmonizationHeader = "${param.harmonizationHeader}" />
			<strapi:faqListsAnalyticsHeader analyticsHeader = "${param.analyticsHeader}" />
			<strapi:faqListsSyntheticHeader syntheticHeader = "${param.syntheticHeader}" />
			<strapi:faqListsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:faqListsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:faqListsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:faqListsCreatedById createdById = "${param.createdById}" />
			<strapi:faqListsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:faqLists>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>