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
										<legend>NavItemsNavColumnLinks</legend>
										<label for="NavItems">NavItems</label>
										<br>
											<strapi:foreachNavItems var="navItemsIter">
												<strapi:navItems>
												<input type="radio" name="ID" value="<strapi:navItemsID />"><label for="ID"><strapi:navItemsID /></label>
												<br>
												</strapi:navItems>
											</strapi:foreachNavItems>
										<label for="navItemId">NavItemId</label>
										<input type="text" id="navItemId" name="navItemId" size="40" value="">
										<br>

										<label for="navColumnId">NavColumnId</label>
										<input type="text" id="navColumnId" name="navColumnId" size="40" value="">
										<br>

										<label for="navItemOrder">NavItemOrder</label>
										<input type="text" id="navItemOrder" name="navItemOrder" size="40" value="">
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
										<legend>NavItemsNavColumnLinks</legend>
										<label for="NavColumns">NavColumns</label>
										<br>
											<strapi:foreachNavColumns var="navColumnsIter">
												<strapi:navColumns>
												<input type="radio" name="ID" value="<strapi:navColumnsID />"><label for="ID"><strapi:navColumnsID /></label>
												<br>
												</strapi:navColumns>
											</strapi:foreachNavColumns>
										<label for="navItemId">NavItemId</label>
										<input type="text" id="navItemId" name="navItemId" size="40" value="">
										<br>

										<label for="navColumnId">NavColumnId</label>
										<input type="text" id="navColumnId" name="navColumnId" size="40" value="">
										<br>

										<label for="navItemOrder">NavItemOrder</label>
										<input type="text" id="navItemOrder" name="navItemOrder" size="40" value="">
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
		<strapi:navColumns ID = "${param.ID}">
		<strapi:navItems ID = "${param.ID}">
			<strapi:navItemsNavColumnLinks>
				<strapi:navItemsNavColumnLinksNavItemId navItemId = "${param.navItemId}" />
				<strapi:navItemsNavColumnLinksNavColumnId navColumnId = "${param.navColumnId}" />
				<strapi:navItemsNavColumnLinksNavItemOrder navItemOrder = "${param.navItemOrder}" />
			</strapi:navItemsNavColumnLinks>
		</strapi:navItems>
		</strapi:navColumns>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>