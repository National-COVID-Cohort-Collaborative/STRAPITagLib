<%@ include file="../_include.jsp"  %>


<c:choose>
	<c:when test="${empty param.submit and not empty param.ID}">
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
										<legend>NewsItemsPressReleasesLinks</legend>
										<label for="PressReleases">PressReleases</label>
										<br>
											<strapi:foreachPressReleases var="pressReleasesIter">
												<strapi:pressReleases>
												<input type="radio" name="ID" value="<strapi:pressReleasesID />"><label for="ID"><strapi:pressReleasesID /></label>
												<br>
												</strapi:pressReleases>
											</strapi:foreachPressReleases>
										<label for="newsItemId">NewsItemId</label>
										<input type="text" id="newsItemId" name="newsItemId" size="40" value="">
										<br>

										<label for="pressReleaseId">PressReleaseId</label>
										<input type="text" id="pressReleaseId" name="pressReleaseId" size="40" value="">
										<br>

										<label for="pressReleaseOrder">PressReleaseOrder</label>
										<input type="text" id="pressReleaseOrder" name="pressReleaseOrder" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
										<input type="hidden" name="ID" value="${param.ID}">
									</fieldset>
								</form>
                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </body>
        </html>
	</c:when>
	<c:when test="${empty param.submit and not empty param.ID}">
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
										<legend>NewsItemsPressReleasesLinks</legend>
										<label for="NewsItems">NewsItems</label>
										<br>
											<strapi:foreachNewsItems var="newsItemsIter">
												<strapi:newsItems>
												<input type="radio" name="ID" value="<strapi:newsItemsID />"><label for="ID"><strapi:newsItemsID /></label>
												<br>
												</strapi:newsItems>
											</strapi:foreachNewsItems>
										<label for="newsItemId">NewsItemId</label>
										<input type="text" id="newsItemId" name="newsItemId" size="40" value="">
										<br>

										<label for="pressReleaseId">PressReleaseId</label>
										<input type="text" id="pressReleaseId" name="pressReleaseId" size="40" value="">
										<br>

										<label for="pressReleaseOrder">PressReleaseOrder</label>
										<input type="text" id="pressReleaseOrder" name="pressReleaseOrder" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
										<input type="hidden" name="ID" value="${param.ID}">
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
		<strapi:newsItems ID = "${param.ID}">
		<strapi:pressReleases ID = "${param.ID}">
			<strapi:newsItemsPressReleasesLinks>
				<strapi:newsItemsPressReleasesLinksNewsItemId newsItemId = "${param.newsItemId}" />
				<strapi:newsItemsPressReleasesLinksPressReleaseId pressReleaseId = "${param.pressReleaseId}" />
				<strapi:newsItemsPressReleasesLinksPressReleaseOrder pressReleaseOrder = "${param.pressReleaseOrder}" />
			</strapi:newsItemsPressReleasesLinks>
		</strapi:pressReleases>
		</strapi:newsItems>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>