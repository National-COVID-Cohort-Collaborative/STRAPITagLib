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
<strapi:landingPages ID="${ID}">
	<h2>LandingPages: <strapi:landingPagesID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Welcome</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>Introduction</th>
			<th>Researchers</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:landingPagesID />"><strapi:landingPagesID /></a></td>
				<td><strapi:landingPagesWelcome /></td>
				<td><strapi:landingPagesCreatedAt /></td>
				<td><strapi:landingPagesUpdatedAt /></td>
				<td><strapi:landingPagesPublishedAt /></td>
				<td><strapi:landingPagesCreatedById /></td>
				<td><strapi:landingPagesUpdatedById /></td>
				<td><strapi:landingPagesIntroduction /></td>
				<td><strapi:landingPagesResearchers /></td>
			</tr>
		</table>

						<h2>LandingPagesDomainTeamsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>LandingPageId</th>
									<th>DomainTeamId</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachLandingPagesDomainTeamsLinks var="idIter">
									<strapi:landingPagesDomainTeamsLinks>
										<tr>
											<td><a href="../landingPagesDomainTeamsLinks/show.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />"><strapi:landingPagesDomainTeamsLinksID /></a></td>
											<td><strapi:landingPagesDomainTeamsLinksLandingPageId /></td>
											<td><strapi:landingPagesDomainTeamsLinksDomainTeamId /></td>
											<td><strapi:landingPagesDomainTeamsLinksDomainTeamOrder /></td>
											<td><a href="../landingPagesDomainTeamsLinks/edit.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />">edit</a></td>
											<td><a href="../landingPagesDomainTeamsLinks/delete.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />">delete</a></td>
										</tr>
									</strapi:landingPagesDomainTeamsLinks>
								</strapi:foreachLandingPagesDomainTeamsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../landingPagesDomainTeamsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add LandingPagesDomainTeamsLinks</a>
						<br/><br/>

		<strapi:foreachLandingPagesDomainTeamsLinks var="idIter">
			<strapi:landingPagesDomainTeamsLinks>
						<a href="../../strapi/landingPagesDomainTeamsLinks/landingPagesDomainTeamsLinks.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />"><strapi:landingPagesDomainTeamsLinksID /></a>
		<strapi:landingPagesDomainTeamsLinksLandingPageId />
		<strapi:landingPagesDomainTeamsLinksDomainTeamId />
		<strapi:landingPagesDomainTeamsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:landingPagesDomainTeamsLinks>
			</strapi:foreachLandingPagesDomainTeamsLinks>

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
</strapi:landingPages>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>