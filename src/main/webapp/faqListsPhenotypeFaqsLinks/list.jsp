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

						<h2>FaqListsPhenotypeFaqsLinks List</h2>
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
								<strapi:foreachFaqListsPhenotypeFaqsLinks var="idIter">
									<strapi:faqListsPhenotypeFaqsLinks>
										<tr>
											<td><a href="../faqListsPhenotypeFaqsLinks/show.jsp?ID=<strapi:faqListsPhenotypeFaqsLinksID />"><strapi:faqListsPhenotypeFaqsLinksID /></a></td>
											<td><strapi:faqListsPhenotypeFaqsLinksFaqListId /></td>
											<td><strapi:faqListsPhenotypeFaqsLinksFaqId /></td>
											<td><strapi:faqListsPhenotypeFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsPhenotypeFaqsLinks/edit.jsp?ID=<strapi:faqListsPhenotypeFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsPhenotypeFaqsLinks/delete.jsp?ID=<strapi:faqListsPhenotypeFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsPhenotypeFaqsLinks>
								</strapi:foreachFaqListsPhenotypeFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsPhenotypeFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsPhenotypeFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsPhenotypeFaqsLinks var="idIter">
			<strapi:faqListsPhenotypeFaqsLinks>
						<a href="../../strapi/faqListsPhenotypeFaqsLinks/faqListsPhenotypeFaqsLinks.jsp?ID=<strapi:faqListsPhenotypeFaqsLinksID />"><strapi:faqListsPhenotypeFaqsLinksID /></a>
		<strapi:faqListsPhenotypeFaqsLinksFaqListId />
		<strapi:faqListsPhenotypeFaqsLinksFaqId />
		<strapi:faqListsPhenotypeFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsPhenotypeFaqsLinks>
			</strapi:foreachFaqListsPhenotypeFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>