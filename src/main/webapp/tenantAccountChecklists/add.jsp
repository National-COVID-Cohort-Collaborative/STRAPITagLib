<%@ include file="../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit}">
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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>TenantAccountChecklists</legend>
										<label for="header">Header</label>
										<input type="text" id="header" name="header" size="40" value="">
										<br>

										<label for="header2">Header2</label>
										<input type="text" id="header2" name="header2" size="40" value="">
										<br>

										<label for="checklist">Checklist</label>
										<input type="text" id="checklist" name="checklist" size="40" value="">
										<br>

										<label for="trailer">Trailer</label>
										<input type="text" id="trailer" name="trailer" size="40" value="">
										<br>

										<label for="intro">Intro</label>
										<input type="text" id="intro" name="intro" size="40" value="">
										<br>

										<label for="createdAt">CreatedAt</label>
										<input type="text" id="createdAt" name="createdAt" size="40" value="">
										<br>

										<label for="updatedAt">UpdatedAt</label>
										<input type="text" id="updatedAt" name="updatedAt" size="40" value="">
										<br>

										<label for="publishedAt">PublishedAt</label>
										<input type="text" id="publishedAt" name="publishedAt" size="40" value="">
										<br>

										<label for="createdById">CreatedById</label>
										<input type="text" id="createdById" name="createdById" size="40" value="">
										<br>

										<label for="updatedById">UpdatedById</label>
										<input type="text" id="updatedById" name="updatedById" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
									</fieldset>
								</form>
                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${param.submit eq 'Cancel'}">
		<c:redirect url="list.jsp" />
	</c:when>
	<c:when test="${param.submit eq 'Save'}">
		<strapi:tenantAccountChecklists>
			<strapi:tenantAccountChecklistsHeader header = "${param.header}" />
			<strapi:tenantAccountChecklistsHeader2 header2 = "${param.header2}" />
			<strapi:tenantAccountChecklistsChecklist checklist = "${param.checklist}" />
			<strapi:tenantAccountChecklistsTrailer trailer = "${param.trailer}" />
			<strapi:tenantAccountChecklistsIntro intro = "${param.intro}" />
			<strapi:tenantAccountChecklistsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:tenantAccountChecklistsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:tenantAccountChecklistsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:tenantAccountChecklistsCreatedById createdById = "${param.createdById}" />
			<strapi:tenantAccountChecklistsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:tenantAccountChecklists>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>