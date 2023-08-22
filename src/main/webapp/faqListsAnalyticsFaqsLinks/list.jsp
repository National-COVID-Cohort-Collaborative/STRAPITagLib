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

						<h2>FaqListsAnalyticsFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FaqListId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqListsAnalyticsFaqsLinks var="idIter">
									<strapi:faqListsAnalyticsFaqsLinks>
										<tr>
											<td><a href="../faqListsAnalyticsFaqsLinks/show.jsp?ID=<strapi:faqListsAnalyticsFaqsLinksID />"><strapi:faqListsAnalyticsFaqsLinksID /></a></td>
											<td><strapi:faqListsAnalyticsFaqsLinksFaqListId /></td>
											<td><strapi:faqListsAnalyticsFaqsLinksFaqId /></td>
											<td><strapi:faqListsAnalyticsFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsAnalyticsFaqsLinks/edit.jsp?ID=<strapi:faqListsAnalyticsFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsAnalyticsFaqsLinks/delete.jsp?ID=<strapi:faqListsAnalyticsFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsAnalyticsFaqsLinks>
								</strapi:foreachFaqListsAnalyticsFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsAnalyticsFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsAnalyticsFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsAnalyticsFaqsLinks var="idIter">
			<strapi:faqListsAnalyticsFaqsLinks>
						<a href="../../strapi/faqListsAnalyticsFaqsLinks/faqListsAnalyticsFaqsLinks.jsp?ID=<strapi:faqListsAnalyticsFaqsLinksID />"><strapi:faqListsAnalyticsFaqsLinksID /></a>
		<strapi:faqListsAnalyticsFaqsLinksFaqListId />
		<strapi:faqListsAnalyticsFaqsLinksFaqId />
		<strapi:faqListsAnalyticsFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsAnalyticsFaqsLinks>
			</strapi:foreachFaqListsAnalyticsFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>