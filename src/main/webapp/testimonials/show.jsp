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
<strapi:testimonials ID="${ID}">
	<h2>Testimonials: <strapi:testimonialsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Quote</th>
			<th>Author</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:testimonialsID />"><strapi:testimonialsID /></a></td>
				<td><strapi:testimonialsName /></td>
				<td><strapi:testimonialsQuote /></td>
				<td><strapi:testimonialsAuthor /></td>
				<td><strapi:testimonialsCreatedAt /></td>
				<td><strapi:testimonialsUpdatedAt /></td>
				<td><strapi:testimonialsPublishedAt /></td>
				<td><strapi:testimonialsCreatedById /></td>
				<td><strapi:testimonialsUpdatedById /></td>
			</tr>
		</table>

						<h2>LandingPagesTestimonialsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>LandingPageId</th>
									<th>TestimonialId</th>
									<th>TestimonialOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachLandingPagesTestimonialsLinks var="idIter">
									<strapi:landingPagesTestimonialsLinks>
										<tr>
											<td><a href="../landingPagesTestimonialsLinks/show.jsp?ID=<strapi:landingPagesTestimonialsLinksID />"><strapi:landingPagesTestimonialsLinksID /></a></td>
											<td><strapi:landingPagesTestimonialsLinksLandingPageId /></td>
											<td><strapi:landingPagesTestimonialsLinksTestimonialId /></td>
											<td><strapi:landingPagesTestimonialsLinksTestimonialOrder /></td>
											<td><a href="../landingPagesTestimonialsLinks/edit.jsp?ID=<strapi:landingPagesTestimonialsLinksID />">edit</a></td>
											<td><a href="../landingPagesTestimonialsLinks/delete.jsp?ID=<strapi:landingPagesTestimonialsLinksID />">delete</a></td>
										</tr>
									</strapi:landingPagesTestimonialsLinks>
								</strapi:foreachLandingPagesTestimonialsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../landingPagesTestimonialsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add LandingPagesTestimonialsLinks</a>
						<br/><br/>

		<strapi:foreachLandingPagesTestimonialsLinks var="idIter">
			<strapi:landingPagesTestimonialsLinks>
						<a href="../../strapi/landingPagesTestimonialsLinks/landingPagesTestimonialsLinks.jsp?ID=<strapi:landingPagesTestimonialsLinksID />"><strapi:landingPagesTestimonialsLinksID /></a>
		<strapi:landingPagesTestimonialsLinksLandingPageId />
		<strapi:landingPagesTestimonialsLinksTestimonialId />
		<strapi:landingPagesTestimonialsLinksTestimonialOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:landingPagesTestimonialsLinks>
			</strapi:foreachLandingPagesTestimonialsLinks>
</strapi:testimonials>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>