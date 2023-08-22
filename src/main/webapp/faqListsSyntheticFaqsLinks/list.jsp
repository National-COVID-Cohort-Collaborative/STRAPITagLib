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

						<h2>FaqListsSyntheticFaqsLinks List</h2>
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
								<strapi:foreachFaqListsSyntheticFaqsLinks var="idIter">
									<strapi:faqListsSyntheticFaqsLinks>
										<tr>
											<td><a href="../faqListsSyntheticFaqsLinks/show.jsp?ID=<strapi:faqListsSyntheticFaqsLinksID />"><strapi:faqListsSyntheticFaqsLinksID /></a></td>
											<td><strapi:faqListsSyntheticFaqsLinksFaqListId /></td>
											<td><strapi:faqListsSyntheticFaqsLinksFaqId /></td>
											<td><strapi:faqListsSyntheticFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsSyntheticFaqsLinks/edit.jsp?ID=<strapi:faqListsSyntheticFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsSyntheticFaqsLinks/delete.jsp?ID=<strapi:faqListsSyntheticFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsSyntheticFaqsLinks>
								</strapi:foreachFaqListsSyntheticFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsSyntheticFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsSyntheticFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsSyntheticFaqsLinks var="idIter">
			<strapi:faqListsSyntheticFaqsLinks>
						<a href="../../strapi/faqListsSyntheticFaqsLinks/faqListsSyntheticFaqsLinks.jsp?ID=<strapi:faqListsSyntheticFaqsLinksID />"><strapi:faqListsSyntheticFaqsLinksID /></a>
		<strapi:faqListsSyntheticFaqsLinksFaqListId />
		<strapi:faqListsSyntheticFaqsLinksFaqId />
		<strapi:faqListsSyntheticFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsSyntheticFaqsLinks>
			</strapi:foreachFaqListsSyntheticFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>