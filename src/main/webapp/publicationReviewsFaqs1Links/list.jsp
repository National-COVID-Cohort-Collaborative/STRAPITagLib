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

						<h2>PublicationReviewsFaqs1Links List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PublicationReviewId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPublicationReviewsFaqs1Links var="idIter">
									<strapi:publicationReviewsFaqs1Links>
										<tr>
											<td><a href="../publicationReviewsFaqs1Links/show.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />"><strapi:publicationReviewsFaqs1LinksID /></a></td>
											<td><strapi:publicationReviewsFaqs1LinksPublicationReviewId /></td>
											<td><strapi:publicationReviewsFaqs1LinksFaqId /></td>
											<td><strapi:publicationReviewsFaqs1LinksFaqOrder /></td>
											<td><a href="../publicationReviewsFaqs1Links/edit.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />">edit</a></td>
											<td><a href="../publicationReviewsFaqs1Links/delete.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />">delete</a></td>
										</tr>
									</strapi:publicationReviewsFaqs1Links>
								</strapi:foreachPublicationReviewsFaqs1Links>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../publicationReviewsFaqs1Links/add.jsp?ID=${param.ID}&ID=${param.ID}">add PublicationReviewsFaqs1Links</a>
						<br/><br/>

		<strapi:foreachPublicationReviewsFaqs1Links var="idIter">
			<strapi:publicationReviewsFaqs1Links>
						<a href="../../strapi/publicationReviewsFaqs1Links/publicationReviewsFaqs1Links.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />"><strapi:publicationReviewsFaqs1LinksID /></a>
		<strapi:publicationReviewsFaqs1LinksPublicationReviewId />
		<strapi:publicationReviewsFaqs1LinksFaqId />
		<strapi:publicationReviewsFaqs1LinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:publicationReviewsFaqs1Links>
			</strapi:foreachPublicationReviewsFaqs1Links>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>