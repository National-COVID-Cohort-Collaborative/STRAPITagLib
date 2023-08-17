<%@ include file="../../_include.jsp"  %>

<html>
    <jsp:include page="../../head.jsp" />
    <body>
        <div class="container-fluid">
            <jsp:include page="../../header.jsp" />
            <div class="row flex-nowrap">
                <div class="col-xs-3">
                    <jsp:include page="../../menu.jsp" />
                </div>
                <div class="col-xs-8">

						<h2>Testimonials List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
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
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTestimonials var="idIter">
									<strapi:testimonials>
										<tr>
											<td><a href="../testimonials/show.jsp?ID=<strapi:testimonialsID />"><strapi:testimonialsID /></a></td>
											<td><strapi:testimonialsName /></td>
											<td><strapi:testimonialsQuote /></td>
											<td><strapi:testimonialsAuthor /></td>
											<td><strapi:testimonialsCreatedAt /></td>
											<td><strapi:testimonialsUpdatedAt /></td>
											<td><strapi:testimonialsPublishedAt /></td>
											<td><strapi:testimonialsCreatedById /></td>
											<td><strapi:testimonialsUpdatedById /></td>
											<td><a href="../testimonials/edit.jsp?ID=<strapi:testimonialsID />">edit</a></td>
											<td><a href="../testimonials/delete.jsp?ID=<strapi:testimonialsID />">delete</a></td>
										</tr>
									</strapi:testimonials>
								</strapi:foreachTestimonials>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../testimonials/add.jsp">add Testimonials</a>
						<br/><br/>

		<strapi:foreachTestimonials var="idIter">
			<strapi:testimonials>
						<a href="../../strapi/testimonials/testimonials.jsp?ID=<strapi:testimonialsID />"><strapi:testimonialsID /></a>
		<strapi:testimonialsName />
		<strapi:testimonialsQuote />
		<strapi:testimonialsAuthor />
		<strapi:testimonialsCreatedAt />
		<strapi:testimonialsUpdatedAt />
		<strapi:testimonialsPublishedAt />
		<strapi:testimonialsCreatedById />
		<strapi:testimonialsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:testimonials>
			</strapi:foreachTestimonials>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>