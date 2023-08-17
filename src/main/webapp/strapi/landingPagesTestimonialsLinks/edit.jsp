<%@ include file="../../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit and not empty param.ID}">
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
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:landingPagesTestimonialsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>LandingPagesTestimonialsLinks</legend>
											<label for="LandingPages">LandingPages</label>
											<br>
												<strapi:foreachLandingPages var="landingPagesIter">
													<strapi:landingPages>
													<input type="radio" name="ID" value="<strapi:landingPagesID />"><label for="ID"><strapi:landingPagesID /></label>
													<br>
													</strapi:landingPages>
												</strapi:foreachLandingPages>
											<label for="Testimonials">Testimonials</label>
											<br>
												<strapi:foreachTestimonials var="testimonialsIter">
													<strapi:testimonials>
													<input type="radio" name="ID" value="<strapi:testimonialsID />"><label for="ID"><strapi:testimonialsID /></label>
													<br>
													</strapi:testimonials>
												</strapi:foreachTestimonials>
											<label for="landingPageId">LandingPageId</label>
											<input type="text" id="landingPageId" name="landingPageId" size="40" value="<strapi:landingPagesTestimonialsLinksLandingPageId />">
											<br>

											<label for="testimonialId">TestimonialId</label>
											<input type="text" id="testimonialId" name="testimonialId" size="40" value="<strapi:landingPagesTestimonialsLinksTestimonialId />">
											<br>

											<label for="testimonialOrder">TestimonialOrder</label>
											<input type="text" id="testimonialOrder" name="testimonialOrder" size="40" value="<strapi:landingPagesTestimonialsLinksTestimonialOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:landingPagesTestimonialsLinks>
                        </div>
                    </div>
                </div>
                <jsp:include page="../../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${empty param.submit and not empty param.ID}">
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
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:landingPagesTestimonialsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>LandingPagesTestimonialsLinks</legend>
											<label for="LandingPages">LandingPages</label>
											<br>
												<strapi:foreachLandingPages var="landingPagesIter">
													<strapi:landingPages>
													<input type="radio" name="ID" value="<strapi:landingPagesID />"><label for="ID"><strapi:landingPagesID /></label>
													<br>
													</strapi:landingPages>
												</strapi:foreachLandingPages>
											<label for="Testimonials">Testimonials</label>
											<br>
												<strapi:foreachTestimonials var="testimonialsIter">
													<strapi:testimonials>
													<input type="radio" name="ID" value="<strapi:testimonialsID />"><label for="ID"><strapi:testimonialsID /></label>
													<br>
													</strapi:testimonials>
												</strapi:foreachTestimonials>
											<label for="landingPageId">LandingPageId</label>
											<input type="text" id="landingPageId" name="landingPageId" size="40" value="<strapi:landingPagesTestimonialsLinksLandingPageId />">
											<br>

											<label for="testimonialId">TestimonialId</label>
											<input type="text" id="testimonialId" name="testimonialId" size="40" value="<strapi:landingPagesTestimonialsLinksTestimonialId />">
											<br>

											<label for="testimonialOrder">TestimonialOrder</label>
											<input type="text" id="testimonialOrder" name="testimonialOrder" size="40" value="<strapi:landingPagesTestimonialsLinksTestimonialOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:landingPagesTestimonialsLinks>
                        </div>
                    </div>
                </div>
                <jsp:include page="../../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${param.submit eq 'Cancel'}">
		<c:redirect url="list.jsp" />
	</c:when>
	<c:when test="${param.submit eq 'Save'}">
		<fmt:parseNumber var="ID" value="${param.ID}" />
		<fmt:parseNumber var="landingPageId" value="${param.landingPageId}" />
		<fmt:parseNumber var="testimonialId" value="${param.testimonialId}" />
		<strapi:landingPagesTestimonialsLinks ID="${ID}">
			<strapi:landingPagesTestimonialsLinksLandingPageId landingPageId = "${param.landingPageId}" />
			<strapi:landingPagesTestimonialsLinksTestimonialId testimonialId = "${param.testimonialId}" />
			<strapi:landingPagesTestimonialsLinksTestimonialOrder testimonialOrder = "${param.testimonialOrder}" />
		</strapi:landingPagesTestimonialsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>