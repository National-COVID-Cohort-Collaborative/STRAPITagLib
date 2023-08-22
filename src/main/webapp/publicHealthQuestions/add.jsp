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
										<legend>PublicHealthQuestions</legend>
										<label for="priority">Priority</label>
										<input type="text" id="priority" name="priority" size="40" value="">
										<br>

										<label for="owner">Owner</label>
										<input type="text" id="owner" name="owner" size="40" value="">
										<br>

										<label for="title">Title</label>
										<input type="text" id="title" name="title" size="40" value="">
										<br>

										<label for="description">Description</label>
										<input type="text" id="description" name="description" size="40" value="">
										<br>

										<label for="postDate">PostDate</label>
										<input type="text" id="postDate" name="postDate" size="40" value="">
										<br>

										<label for="openDate">OpenDate</label>
										<input type="text" id="openDate" name="openDate" size="40" value="">
										<br>

										<label for="closeDate">CloseDate</label>
										<input type="text" id="closeDate" name="closeDate" size="40" value="">
										<br>

										<label for="contractLength">ContractLength</label>
										<input type="text" id="contractLength" name="contractLength" size="40" value="">
										<br>

										<label for="contractCount">ContractCount</label>
										<input type="text" id="contractCount" name="contractCount" size="40" value="">
										<br>

										<label for="contractAmount">ContractAmount</label>
										<input type="text" id="contractAmount" name="contractAmount" size="40" value="">
										<br>

										<label for="contact">Contact</label>
										<input type="text" id="contact" name="contact" size="40" value="">
										<br>

										<label for="contactEmail">ContactEmail</label>
										<input type="text" id="contactEmail" name="contactEmail" size="40" value="">
										<br>

										<label for="aims">Aims</label>
										<input type="text" id="aims" name="aims" size="40" value="">
										<br>

										<label for="inclusionCriteria">InclusionCriteria</label>
										<input type="text" id="inclusionCriteria" name="inclusionCriteria" size="40" value="">
										<br>

										<label for="exclusionCriteria">ExclusionCriteria</label>
										<input type="text" id="exclusionCriteria" name="exclusionCriteria" size="40" value="">
										<br>

										<label for="phenotype">Phenotype</label>
										<input type="text" id="phenotype" name="phenotype" size="40" value="">
										<br>

										<label for="expectedResults">ExpectedResults</label>
										<input type="text" id="expectedResults" name="expectedResults" size="40" value="">
										<br>

										<label for="analysisPlan">AnalysisPlan</label>
										<input type="text" id="analysisPlan" name="analysisPlan" size="40" value="">
										<br>

										<label for="deliverables">Deliverables</label>
										<input type="text" id="deliverables" name="deliverables" size="40" value="">
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
		<strapi:publicHealthQuestions>
			<strapi:publicHealthQuestionsPriority priority = "${param.priority}" />
			<strapi:publicHealthQuestionsOwner owner = "${param.owner}" />
			<strapi:publicHealthQuestionsTitle title = "${param.title}" />
			<strapi:publicHealthQuestionsDescription description = "${param.description}" />
			<strapi:publicHealthQuestionsPostDate postDate = "${postDate}" />
			<strapi:publicHealthQuestionsOpenDate openDate = "${openDate}" />
			<strapi:publicHealthQuestionsCloseDate closeDate = "${closeDate}" />
			<strapi:publicHealthQuestionsContractLength contractLength = "${param.contractLength}" />
			<strapi:publicHealthQuestionsContractCount contractCount = "${param.contractCount}" />
			<strapi:publicHealthQuestionsContractAmount contractAmount = "${param.contractAmount}" />
			<strapi:publicHealthQuestionsContact contact = "${param.contact}" />
			<strapi:publicHealthQuestionsContactEmail contactEmail = "${param.contactEmail}" />
			<strapi:publicHealthQuestionsAims aims = "${param.aims}" />
			<strapi:publicHealthQuestionsInclusionCriteria inclusionCriteria = "${param.inclusionCriteria}" />
			<strapi:publicHealthQuestionsExclusionCriteria exclusionCriteria = "${param.exclusionCriteria}" />
			<strapi:publicHealthQuestionsPhenotype phenotype = "${param.phenotype}" />
			<strapi:publicHealthQuestionsExpectedResults expectedResults = "${param.expectedResults}" />
			<strapi:publicHealthQuestionsAnalysisPlan analysisPlan = "${param.analysisPlan}" />
			<strapi:publicHealthQuestionsDeliverables deliverables = "${param.deliverables}" />
			<strapi:publicHealthQuestionsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:publicHealthQuestionsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:publicHealthQuestionsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:publicHealthQuestionsCreatedById createdById = "${param.createdById}" />
			<strapi:publicHealthQuestionsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:publicHealthQuestions>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>