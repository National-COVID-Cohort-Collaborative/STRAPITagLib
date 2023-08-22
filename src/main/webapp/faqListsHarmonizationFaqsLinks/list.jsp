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

						<h2>FaqListsHarmonizationFaqsLinks List</h2>
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
								<strapi:foreachFaqListsHarmonizationFaqsLinks var="idIter">
									<strapi:faqListsHarmonizationFaqsLinks>
										<tr>
											<td><a href="../faqListsHarmonizationFaqsLinks/show.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />"><strapi:faqListsHarmonizationFaqsLinksID /></a></td>
											<td><strapi:faqListsHarmonizationFaqsLinksFaqListId /></td>
											<td><strapi:faqListsHarmonizationFaqsLinksFaqId /></td>
											<td><strapi:faqListsHarmonizationFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsHarmonizationFaqsLinks/edit.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsHarmonizationFaqsLinks/delete.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsHarmonizationFaqsLinks>
								</strapi:foreachFaqListsHarmonizationFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsHarmonizationFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsHarmonizationFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsHarmonizationFaqsLinks var="idIter">
			<strapi:faqListsHarmonizationFaqsLinks>
						<a href="../../strapi/faqListsHarmonizationFaqsLinks/faqListsHarmonizationFaqsLinks.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />"><strapi:faqListsHarmonizationFaqsLinksID /></a>
		<strapi:faqListsHarmonizationFaqsLinksFaqListId />
		<strapi:faqListsHarmonizationFaqsLinksFaqId />
		<strapi:faqListsHarmonizationFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsHarmonizationFaqsLinks>
			</strapi:foreachFaqListsHarmonizationFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>