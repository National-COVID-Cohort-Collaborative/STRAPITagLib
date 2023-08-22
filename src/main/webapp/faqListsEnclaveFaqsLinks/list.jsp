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

						<h2>FaqListsEnclaveFaqsLinks List</h2>
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
								<strapi:foreachFaqListsEnclaveFaqsLinks var="idIter">
									<strapi:faqListsEnclaveFaqsLinks>
										<tr>
											<td><a href="../faqListsEnclaveFaqsLinks/show.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />"><strapi:faqListsEnclaveFaqsLinksID /></a></td>
											<td><strapi:faqListsEnclaveFaqsLinksFaqListId /></td>
											<td><strapi:faqListsEnclaveFaqsLinksFaqId /></td>
											<td><strapi:faqListsEnclaveFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsEnclaveFaqsLinks/edit.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsEnclaveFaqsLinks/delete.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsEnclaveFaqsLinks>
								</strapi:foreachFaqListsEnclaveFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsEnclaveFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsEnclaveFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsEnclaveFaqsLinks var="idIter">
			<strapi:faqListsEnclaveFaqsLinks>
						<a href="../../strapi/faqListsEnclaveFaqsLinks/faqListsEnclaveFaqsLinks.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />"><strapi:faqListsEnclaveFaqsLinksID /></a>
		<strapi:faqListsEnclaveFaqsLinksFaqListId />
		<strapi:faqListsEnclaveFaqsLinksFaqId />
		<strapi:faqListsEnclaveFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsEnclaveFaqsLinks>
			</strapi:foreachFaqListsEnclaveFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>