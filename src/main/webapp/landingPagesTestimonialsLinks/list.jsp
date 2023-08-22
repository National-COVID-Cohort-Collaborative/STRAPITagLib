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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>