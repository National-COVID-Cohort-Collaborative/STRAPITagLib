<%@ include file="../_include.jsp"  %>

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

						<h2>PublicHealthQuestions List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Priority</th>
									<th>Owner</th>
									<th>Title</th>
									<th>Description</th>
									<th>PostDate</th>
									<th>OpenDate</th>
									<th>CloseDate</th>
									<th>ContractLength</th>
									<th>ContractCount</th>
									<th>ContractAmount</th>
									<th>Contact</th>
									<th>ContactEmail</th>
									<th>Aims</th>
									<th>InclusionCriteria</th>
									<th>ExclusionCriteria</th>
									<th>Phenotype</th>
									<th>ExpectedResults</th>
									<th>AnalysisPlan</th>
									<th>Deliverables</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPublicHealthQuestions var="idIter">
									<strapi:publicHealthQuestions>
										<tr>
											<td><a href="../publicHealthQuestions/show.jsp?ID=<strapi:publicHealthQuestionsID />"><strapi:publicHealthQuestionsID /></a></td>
											<td><strapi:publicHealthQuestionsPriority /></td>
											<td><strapi:publicHealthQuestionsOwner /></td>
											<td><strapi:publicHealthQuestionsTitle /></td>
											<td><strapi:publicHealthQuestionsDescription /></td>
											<td><strapi:publicHealthQuestionsPostDate /></td>
											<td><strapi:publicHealthQuestionsOpenDate /></td>
											<td><strapi:publicHealthQuestionsCloseDate /></td>
											<td><strapi:publicHealthQuestionsContractLength /></td>
											<td><strapi:publicHealthQuestionsContractCount /></td>
											<td><strapi:publicHealthQuestionsContractAmount /></td>
											<td><strapi:publicHealthQuestionsContact /></td>
											<td><strapi:publicHealthQuestionsContactEmail /></td>
											<td><strapi:publicHealthQuestionsAims /></td>
											<td><strapi:publicHealthQuestionsInclusionCriteria /></td>
											<td><strapi:publicHealthQuestionsExclusionCriteria /></td>
											<td><strapi:publicHealthQuestionsPhenotype /></td>
											<td><strapi:publicHealthQuestionsExpectedResults /></td>
											<td><strapi:publicHealthQuestionsAnalysisPlan /></td>
											<td><strapi:publicHealthQuestionsDeliverables /></td>
											<td><strapi:publicHealthQuestionsCreatedAt /></td>
											<td><strapi:publicHealthQuestionsUpdatedAt /></td>
											<td><strapi:publicHealthQuestionsPublishedAt /></td>
											<td><strapi:publicHealthQuestionsCreatedById /></td>
											<td><strapi:publicHealthQuestionsUpdatedById /></td>
											<td><a href="../publicHealthQuestions/edit.jsp?ID=<strapi:publicHealthQuestionsID />">edit</a></td>
											<td><a href="../publicHealthQuestions/delete.jsp?ID=<strapi:publicHealthQuestionsID />">delete</a></td>
										</tr>
									</strapi:publicHealthQuestions>
								</strapi:foreachPublicHealthQuestions>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../publicHealthQuestions/add.jsp">add PublicHealthQuestions</a>
						<br/><br/>

		<strapi:foreachPublicHealthQuestions var="idIter">
			<strapi:publicHealthQuestions>
						<a href="../../strapi/publicHealthQuestions/publicHealthQuestions.jsp?ID=<strapi:publicHealthQuestionsID />"><strapi:publicHealthQuestionsID /></a>
		<strapi:publicHealthQuestionsPriority />
		<strapi:publicHealthQuestionsOwner />
		<strapi:publicHealthQuestionsTitle />
		<strapi:publicHealthQuestionsDescription />
		<strapi:publicHealthQuestionsPostDate />
		<strapi:publicHealthQuestionsOpenDate />
		<strapi:publicHealthQuestionsCloseDate />
		<strapi:publicHealthQuestionsContractLength />
		<strapi:publicHealthQuestionsContractCount />
		<strapi:publicHealthQuestionsContractAmount />
		<strapi:publicHealthQuestionsContact />
		<strapi:publicHealthQuestionsContactEmail />
		<strapi:publicHealthQuestionsAims />
		<strapi:publicHealthQuestionsInclusionCriteria />
		<strapi:publicHealthQuestionsExclusionCriteria />
		<strapi:publicHealthQuestionsPhenotype />
		<strapi:publicHealthQuestionsExpectedResults />
		<strapi:publicHealthQuestionsAnalysisPlan />
		<strapi:publicHealthQuestionsDeliverables />
		<strapi:publicHealthQuestionsCreatedAt />
		<strapi:publicHealthQuestionsUpdatedAt />
		<strapi:publicHealthQuestionsPublishedAt />
		<strapi:publicHealthQuestionsCreatedById />
		<strapi:publicHealthQuestionsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:publicHealthQuestions>
			</strapi:foreachPublicHealthQuestions>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>