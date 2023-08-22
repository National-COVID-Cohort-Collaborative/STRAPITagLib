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
										<legend>DomainTeamsLeadsLinks</legend>
										<label for="DomainTeams">DomainTeams</label>
										<br>
											<strapi:foreachDomainTeams var="domainTeamsIter">
												<strapi:domainTeams>
												<input type="radio" name="ID" value="<strapi:domainTeamsID />"><label for="ID"><strapi:domainTeamsID /></label>
												<br>
												</strapi:domainTeams>
											</strapi:foreachDomainTeams>
										<label for="domainTeamId">DomainTeamId</label>
										<input type="text" id="domainTeamId" name="domainTeamId" size="40" value="">
										<br>

										<label for="bioId">BioId</label>
										<input type="text" id="bioId" name="bioId" size="40" value="">
										<br>

										<label for="bioOrder">BioOrder</label>
										<input type="text" id="bioOrder" name="bioOrder" size="40" value="">
										<br>

										<label for="domainTeamOrder">DomainTeamOrder</label>
										<input type="text" id="domainTeamOrder" name="domainTeamOrder" size="40" value="">
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
										<legend>DomainTeamsLeadsLinks</legend>
										<label for="Bios">Bios</label>
										<br>
											<strapi:foreachBios var="biosIter">
												<strapi:bios>
												<input type="radio" name="ID" value="<strapi:biosID />"><label for="ID"><strapi:biosID /></label>
												<br>
												</strapi:bios>
											</strapi:foreachBios>
										<label for="domainTeamId">DomainTeamId</label>
										<input type="text" id="domainTeamId" name="domainTeamId" size="40" value="">
										<br>

										<label for="bioId">BioId</label>
										<input type="text" id="bioId" name="bioId" size="40" value="">
										<br>

										<label for="bioOrder">BioOrder</label>
										<input type="text" id="bioOrder" name="bioOrder" size="40" value="">
										<br>

										<label for="domainTeamOrder">DomainTeamOrder</label>
										<input type="text" id="domainTeamOrder" name="domainTeamOrder" size="40" value="">
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
		<strapi:bios ID = "${param.ID}">
		<strapi:domainTeams ID = "${param.ID}">
			<strapi:domainTeamsLeadsLinks>
				<strapi:domainTeamsLeadsLinksDomainTeamId domainTeamId = "${param.domainTeamId}" />
				<strapi:domainTeamsLeadsLinksBioId bioId = "${param.bioId}" />
				<strapi:domainTeamsLeadsLinksBioOrder bioOrder = "${param.bioOrder}" />
				<strapi:domainTeamsLeadsLinksDomainTeamOrder domainTeamOrder = "${param.domainTeamOrder}" />
			</strapi:domainTeamsLeadsLinks>
		</strapi:domainTeams>
		</strapi:bios>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>