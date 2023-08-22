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
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:publicationReviews ID="${ID}">
	<h2>PublicationReviews: <strapi:publicationReviewsID /></h2>
		<table border=1>
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
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:publicationReviewsID />"><strapi:publicationReviewsID /></a></td>
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
			</tr>
		</table>

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
</strapi:publicationReviews>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>