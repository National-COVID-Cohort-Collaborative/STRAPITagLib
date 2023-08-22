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
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:navColumnsNavBarLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>NavColumnsNavBarLinks</legend>
											<label for="NavBars">NavBars</label>
											<br>
												<strapi:foreachNavBars var="navBarsIter">
													<strapi:navBars>
													<input type="radio" name="ID" value="<strapi:navBarsID />"><label for="ID"><strapi:navBarsID /></label>
													<br>
													</strapi:navBars>
												</strapi:foreachNavBars>
											<label for="NavColumns">NavColumns</label>
											<br>
												<strapi:foreachNavColumns var="navColumnsIter">
													<strapi:navColumns>
													<input type="radio" name="ID" value="<strapi:navColumnsID />"><label for="ID"><strapi:navColumnsID /></label>
													<br>
													</strapi:navColumns>
												</strapi:foreachNavColumns>
											<label for="navColumnId">NavColumnId</label>
											<input type="text" id="navColumnId" name="navColumnId" size="40" value="<strapi:navColumnsNavBarLinksNavColumnId />">
											<br>

											<label for="navBarId">NavBarId</label>
											<input type="text" id="navBarId" name="navBarId" size="40" value="<strapi:navColumnsNavBarLinksNavBarId />">
											<br>

											<label for="navColumnOrder">NavColumnOrder</label>
											<input type="text" id="navColumnOrder" name="navColumnOrder" size="40" value="<strapi:navColumnsNavBarLinksNavColumnOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:navColumnsNavBarLinks>
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
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:navColumnsNavBarLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>NavColumnsNavBarLinks</legend>
											<label for="NavBars">NavBars</label>
											<br>
												<strapi:foreachNavBars var="navBarsIter">
													<strapi:navBars>
													<input type="radio" name="ID" value="<strapi:navBarsID />"><label for="ID"><strapi:navBarsID /></label>
													<br>
													</strapi:navBars>
												</strapi:foreachNavBars>
											<label for="NavColumns">NavColumns</label>
											<br>
												<strapi:foreachNavColumns var="navColumnsIter">
													<strapi:navColumns>
													<input type="radio" name="ID" value="<strapi:navColumnsID />"><label for="ID"><strapi:navColumnsID /></label>
													<br>
													</strapi:navColumns>
												</strapi:foreachNavColumns>
											<label for="navColumnId">NavColumnId</label>
											<input type="text" id="navColumnId" name="navColumnId" size="40" value="<strapi:navColumnsNavBarLinksNavColumnId />">
											<br>

											<label for="navBarId">NavBarId</label>
											<input type="text" id="navBarId" name="navBarId" size="40" value="<strapi:navColumnsNavBarLinksNavBarId />">
											<br>

											<label for="navColumnOrder">NavColumnOrder</label>
											<input type="text" id="navColumnOrder" name="navColumnOrder" size="40" value="<strapi:navColumnsNavBarLinksNavColumnOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:navColumnsNavBarLinks>
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
		<fmt:parseNumber var="ID" value="${param.ID}" />
		<fmt:parseNumber var="navColumnId" value="${param.navColumnId}" />
		<fmt:parseNumber var="navBarId" value="${param.navBarId}" />
		<strapi:navColumnsNavBarLinks ID="${ID}">
			<strapi:navColumnsNavBarLinksNavColumnId navColumnId = "${param.navColumnId}" />
			<strapi:navColumnsNavBarLinksNavBarId navBarId = "${param.navBarId}" />
			<strapi:navColumnsNavBarLinksNavColumnOrder navColumnOrder = "${param.navColumnOrder}" />
		</strapi:navColumnsNavBarLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>