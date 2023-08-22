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

						<h2>PublicationReviews List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Header2</th>
									<th>FaqBlock1</th>
									<th>FaqBlock2</th>
									<th>Block2</th>
									<th>Block3</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPublicationReviews var="idIter">
									<strapi:publicationReviews>
										<tr>
											<td><a href="../publicationReviews/show.jsp?ID=<strapi:publicationReviewsID />"><strapi:publicationReviewsID /></a></td>
											<td><strapi:publicationReviewsHeader /></td>
											<td><strapi:publicationReviewsHeader2 /></td>
											<td><strapi:publicationReviewsFaqBlock1 /></td>
											<td><strapi:publicationReviewsFaqBlock2 /></td>
											<td><strapi:publicationReviewsBlock2 /></td>
											<td><strapi:publicationReviewsBlock3 /></td>
											<td><strapi:publicationReviewsCreatedAt /></td>
											<td><strapi:publicationReviewsUpdatedAt /></td>
											<td><strapi:publicationReviewsPublishedAt /></td>
											<td><strapi:publicationReviewsCreatedById /></td>
											<td><strapi:publicationReviewsUpdatedById /></td>
											<td><a href="../publicationReviews/edit.jsp?ID=<strapi:publicationReviewsID />">edit</a></td>
											<td><a href="../publicationReviews/delete.jsp?ID=<strapi:publicationReviewsID />">delete</a></td>
										</tr>
									</strapi:publicationReviews>
								</strapi:foreachPublicationReviews>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../publicationReviews/add.jsp">add PublicationReviews</a>
						<br/><br/>

		<strapi:foreachPublicationReviews var="idIter">
			<strapi:publicationReviews>
						<a href="../../strapi/publicationReviews/publicationReviews.jsp?ID=<strapi:publicationReviewsID />"><strapi:publicationReviewsID /></a>
		<strapi:publicationReviewsHeader />
		<strapi:publicationReviewsHeader2 />
		<strapi:publicationReviewsFaqBlock1 />
		<strapi:publicationReviewsFaqBlock2 />
		<strapi:publicationReviewsBlock2 />
		<strapi:publicationReviewsBlock3 />
		<strapi:publicationReviewsCreatedAt />
		<strapi:publicationReviewsUpdatedAt />
		<strapi:publicationReviewsPublishedAt />
		<strapi:publicationReviewsCreatedById />
		<strapi:publicationReviewsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:publicationReviews>
			</strapi:foreachPublicationReviews>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>