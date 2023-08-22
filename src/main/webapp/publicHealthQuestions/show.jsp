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
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:publicHealthQuestions ID="${ID}">
	<h2>PublicHealthQuestions: <strapi:publicHealthQuestionsID /></h2>
		<table border=1>
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
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:publicHealthQuestionsID />"><strapi:publicHealthQuestionsID /></a></td>
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
			</tr>
		</table>

						<h2>PhastrsPublicHealthQuestionsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PhastrId</th>
									<th>PublicHealthQuestionId</th>
									<th>PublicHealthQuestionOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPhastrsPublicHealthQuestionsLinks var="idIter">
									<strapi:phastrsPublicHealthQuestionsLinks>
										<tr>
											<td><a href="../phastrsPublicHealthQuestionsLinks/show.jsp?ID=<strapi:phastrsPublicHealthQuestionsLinksID />"><strapi:phastrsPublicHealthQuestionsLinksID /></a></td>
											<td><strapi:phastrsPublicHealthQuestionsLinksPhastrId /></td>
											<td><strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionId /></td>
											<td><strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionOrder /></td>
											<td><a href="../phastrsPublicHealthQuestionsLinks/edit.jsp?ID=<strapi:phastrsPublicHealthQuestionsLinksID />">edit</a></td>
											<td><a href="../phastrsPublicHealthQuestionsLinks/delete.jsp?ID=<strapi:phastrsPublicHealthQuestionsLinksID />">delete</a></td>
										</tr>
									</strapi:phastrsPublicHealthQuestionsLinks>
								</strapi:foreachPhastrsPublicHealthQuestionsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../phastrsPublicHealthQuestionsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PhastrsPublicHealthQuestionsLinks</a>
						<br/><br/>

		<strapi:foreachPhastrsPublicHealthQuestionsLinks var="idIter">
			<strapi:phastrsPublicHealthQuestionsLinks>
						<a href="../../strapi/phastrsPublicHealthQuestionsLinks/phastrsPublicHealthQuestionsLinks.jsp?ID=<strapi:phastrsPublicHealthQuestionsLinksID />"><strapi:phastrsPublicHealthQuestionsLinksID /></a>
		<strapi:phastrsPublicHealthQuestionsLinksPhastrId />
		<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionId />
		<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:phastrsPublicHealthQuestionsLinks>
			</strapi:foreachPhastrsPublicHealthQuestionsLinks>
</strapi:publicHealthQuestions>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>