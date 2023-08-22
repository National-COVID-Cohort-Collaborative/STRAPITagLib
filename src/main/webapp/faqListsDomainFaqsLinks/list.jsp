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

						<h2>FaqListsDomainFaqsLinks List</h2>
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
								<strapi:foreachFaqListsDomainFaqsLinks var="idIter">
									<strapi:faqListsDomainFaqsLinks>
										<tr>
											<td><a href="../faqListsDomainFaqsLinks/show.jsp?ID=<strapi:faqListsDomainFaqsLinksID />"><strapi:faqListsDomainFaqsLinksID /></a></td>
											<td><strapi:faqListsDomainFaqsLinksFaqListId /></td>
											<td><strapi:faqListsDomainFaqsLinksFaqId /></td>
											<td><strapi:faqListsDomainFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsDomainFaqsLinks/edit.jsp?ID=<strapi:faqListsDomainFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsDomainFaqsLinks/delete.jsp?ID=<strapi:faqListsDomainFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsDomainFaqsLinks>
								</strapi:foreachFaqListsDomainFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsDomainFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsDomainFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsDomainFaqsLinks var="idIter">
			<strapi:faqListsDomainFaqsLinks>
						<a href="../../strapi/faqListsDomainFaqsLinks/faqListsDomainFaqsLinks.jsp?ID=<strapi:faqListsDomainFaqsLinksID />"><strapi:faqListsDomainFaqsLinksID /></a>
		<strapi:faqListsDomainFaqsLinksFaqListId />
		<strapi:faqListsDomainFaqsLinksFaqId />
		<strapi:faqListsDomainFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsDomainFaqsLinks>
			</strapi:foreachFaqListsDomainFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>