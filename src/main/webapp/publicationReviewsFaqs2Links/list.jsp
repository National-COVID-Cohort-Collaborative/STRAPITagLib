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

						<h2>PublicationReviewsFaqs2Links List</h2>
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
								<strapi:foreachPublicationReviewsFaqs2Links var="idIter">
									<strapi:publicationReviewsFaqs2Links>
										<tr>
											<td><a href="../publicationReviewsFaqs2Links/show.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />"><strapi:publicationReviewsFaqs2LinksID /></a></td>
											<td><strapi:publicationReviewsFaqs2LinksPublicationReviewId /></td>
											<td><strapi:publicationReviewsFaqs2LinksFaqId /></td>
											<td><strapi:publicationReviewsFaqs2LinksFaqOrder /></td>
											<td><a href="../publicationReviewsFaqs2Links/edit.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />">edit</a></td>
											<td><a href="../publicationReviewsFaqs2Links/delete.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />">delete</a></td>
										</tr>
									</strapi:publicationReviewsFaqs2Links>
								</strapi:foreachPublicationReviewsFaqs2Links>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../publicationReviewsFaqs2Links/add.jsp?ID=${param.ID}&ID=${param.ID}">add PublicationReviewsFaqs2Links</a>
						<br/><br/>

		<strapi:foreachPublicationReviewsFaqs2Links var="idIter">
			<strapi:publicationReviewsFaqs2Links>
						<a href="../../strapi/publicationReviewsFaqs2Links/publicationReviewsFaqs2Links.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />"><strapi:publicationReviewsFaqs2LinksID /></a>
		<strapi:publicationReviewsFaqs2LinksPublicationReviewId />
		<strapi:publicationReviewsFaqs2LinksFaqId />
		<strapi:publicationReviewsFaqs2LinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:publicationReviewsFaqs2Links>
			</strapi:foreachPublicationReviewsFaqs2Links>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>