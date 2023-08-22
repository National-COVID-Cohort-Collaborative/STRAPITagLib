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

						<h2>Faqs List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Question</th>
									<th>Answer</th>
									<th>Category</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Label</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqs var="idIter">
									<strapi:faqs>
										<tr>
											<td><a href="../faqs/show.jsp?ID=<strapi:faqsID />"><strapi:faqsID /></a></td>
											<td><strapi:faqsQuestion /></td>
											<td><strapi:faqsAnswer /></td>
											<td><strapi:faqsCategory /></td>
											<td><strapi:faqsCreatedAt /></td>
											<td><strapi:faqsUpdatedAt /></td>
											<td><strapi:faqsPublishedAt /></td>
											<td><strapi:faqsCreatedById /></td>
											<td><strapi:faqsUpdatedById /></td>
											<td><strapi:faqsLabel /></td>
											<td><a href="../faqs/edit.jsp?ID=<strapi:faqsID />">edit</a></td>
											<td><a href="../faqs/delete.jsp?ID=<strapi:faqsID />">delete</a></td>
										</tr>
									</strapi:faqs>
								</strapi:foreachFaqs>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqs/add.jsp">add Faqs</a>
						<br/><br/>

		<strapi:foreachFaqs var="idIter">
			<strapi:faqs>
						<a href="../../strapi/faqs/faqs.jsp?ID=<strapi:faqsID />"><strapi:faqsID /></a>
		<strapi:faqsQuestion />
		<strapi:faqsAnswer />
		<strapi:faqsCategory />
		<strapi:faqsCreatedAt />
		<strapi:faqsUpdatedAt />
		<strapi:faqsPublishedAt />
		<strapi:faqsCreatedById />
		<strapi:faqsUpdatedById />
		<strapi:faqsLabel />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqs>
			</strapi:foreachFaqs>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>