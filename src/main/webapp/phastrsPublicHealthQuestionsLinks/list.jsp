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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>