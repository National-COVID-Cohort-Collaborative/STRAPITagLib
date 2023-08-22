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
<strapi:phastrs ID="${ID}">
	<h2>Phastrs: <strapi:phastrsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>About</th>
			<th>Eligibility</th>
			<th>Submission</th>
			<th>QuickStart</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:phastrsID />"><strapi:phastrsID /></a></td>
				<td><strapi:phastrsAbout /></td>
				<td><strapi:phastrsEligibility /></td>
				<td><strapi:phastrsSubmission /></td>
				<td><strapi:phastrsQuickStart /></td>
				<td><strapi:phastrsCreatedAt /></td>
				<td><strapi:phastrsUpdatedAt /></td>
				<td><strapi:phastrsPublishedAt /></td>
				<td><strapi:phastrsCreatedById /></td>
				<td><strapi:phastrsUpdatedById /></td>
			</tr>
		</table>

						<h2>PhastrsFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PhastrId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPhastrsFaqsLinks var="idIter">
									<strapi:phastrsFaqsLinks>
										<tr>
											<td><a href="../phastrsFaqsLinks/show.jsp?ID=<strapi:phastrsFaqsLinksID />"><strapi:phastrsFaqsLinksID /></a></td>
											<td><strapi:phastrsFaqsLinksPhastrId /></td>
											<td><strapi:phastrsFaqsLinksFaqId /></td>
											<td><strapi:phastrsFaqsLinksFaqOrder /></td>
											<td><a href="../phastrsFaqsLinks/edit.jsp?ID=<strapi:phastrsFaqsLinksID />">edit</a></td>
											<td><a href="../phastrsFaqsLinks/delete.jsp?ID=<strapi:phastrsFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:phastrsFaqsLinks>
								</strapi:foreachPhastrsFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../phastrsFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PhastrsFaqsLinks</a>
						<br/><br/>

		<strapi:foreachPhastrsFaqsLinks var="idIter">
			<strapi:phastrsFaqsLinks>
						<a href="../../strapi/phastrsFaqsLinks/phastrsFaqsLinks.jsp?ID=<strapi:phastrsFaqsLinksID />"><strapi:phastrsFaqsLinksID /></a>
		<strapi:phastrsFaqsLinksPhastrId />
		<strapi:phastrsFaqsLinksFaqId />
		<strapi:phastrsFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:phastrsFaqsLinks>
			</strapi:foreachPhastrsFaqsLinks>

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
</strapi:phastrs>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>