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
<strapi:landingPagesTestimonialsLinks ID="${ID}">
	<h2>LandingPagesTestimonialsLinks: <strapi:landingPagesTestimonialsLinksID /></h2>
<ul>
	<li><a href="../landingPages/show.jsp?ID=<strapi:landingPagesTestimonialsLinksLandingPageId />">LandingPages</a>
	<li><a href="../testimonials/show.jsp?ID=<strapi:landingPagesTestimonialsLinksTestimonialId />">Testimonials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>LandingPageId</th>
			<th>TestimonialId</th>
			<th>TestimonialOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:landingPagesTestimonialsLinksID />"><strapi:landingPagesTestimonialsLinksID /></a></td>
				<td><strapi:landingPagesTestimonialsLinksLandingPageId /></td>
				<td><strapi:landingPagesTestimonialsLinksTestimonialId /></td>
				<td><strapi:landingPagesTestimonialsLinksTestimonialOrder /></td>
			</tr>
		</table>
</strapi:landingPagesTestimonialsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>