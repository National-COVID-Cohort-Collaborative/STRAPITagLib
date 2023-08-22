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

						<h2>PublicationReviewsIntroBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PublicationReviewId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPublicationReviewsIntroBlockLinks var="idIter">
									<strapi:publicationReviewsIntroBlockLinks>
										<tr>
											<td><a href="../publicationReviewsIntroBlockLinks/show.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />"><strapi:publicationReviewsIntroBlockLinksID /></a></td>
											<td><strapi:publicationReviewsIntroBlockLinksPublicationReviewId /></td>
											<td><strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../publicationReviewsIntroBlockLinks/edit.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />">edit</a></td>
											<td><a href="../publicationReviewsIntroBlockLinks/delete.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />">delete</a></td>
										</tr>
									</strapi:publicationReviewsIntroBlockLinks>
								</strapi:foreachPublicationReviewsIntroBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../publicationReviewsIntroBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PublicationReviewsIntroBlockLinks</a>
						<br/><br/>

		<strapi:foreachPublicationReviewsIntroBlockLinks var="idIter">
			<strapi:publicationReviewsIntroBlockLinks>
						<a href="../../strapi/publicationReviewsIntroBlockLinks/publicationReviewsIntroBlockLinks.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />"><strapi:publicationReviewsIntroBlockLinksID /></a>
		<strapi:publicationReviewsIntroBlockLinksPublicationReviewId />
		<strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:publicationReviewsIntroBlockLinks>
			</strapi:foreachPublicationReviewsIntroBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>