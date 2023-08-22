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
								<strapi:domainsCrossCuttingTeamsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>DomainsCrossCuttingTeamsLinks</legend>
											<label for="DomainTeams">DomainTeams</label>
											<br>
												<strapi:foreachDomainTeams var="domainTeamsIter">
													<strapi:domainTeams>
													<input type="radio" name="ID" value="<strapi:domainTeamsID />"><label for="ID"><strapi:domainTeamsID /></label>
													<br>
													</strapi:domainTeams>
												</strapi:foreachDomainTeams>
											<label for="Domains">Domains</label>
											<br>
												<strapi:foreachDomains var="domainsIter">
													<strapi:domains>
													<input type="radio" name="ID" value="<strapi:domainsID />"><label for="ID"><strapi:domainsID /></label>
													<br>
													</strapi:domains>
												</strapi:foreachDomains>
											<label for="domainId">DomainId</label>
											<input type="text" id="domainId" name="domainId" size="40" value="<strapi:domainsCrossCuttingTeamsLinksDomainId />">
											<br>

											<label for="domainTeamId">DomainTeamId</label>
											<input type="text" id="domainTeamId" name="domainTeamId" size="40" value="<strapi:domainsCrossCuttingTeamsLinksDomainTeamId />">
											<br>

											<label for="domainTeamOrder">DomainTeamOrder</label>
											<input type="text" id="domainTeamOrder" name="domainTeamOrder" size="40" value="<strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:domainsCrossCuttingTeamsLinks>
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
								<strapi:domainsCrossCuttingTeamsLinks ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>DomainsCrossCuttingTeamsLinks</legend>
											<label for="DomainTeams">DomainTeams</label>
											<br>
												<strapi:foreachDomainTeams var="domainTeamsIter">
													<strapi:domainTeams>
													<input type="radio" name="ID" value="<strapi:domainTeamsID />"><label for="ID"><strapi:domainTeamsID /></label>
													<br>
													</strapi:domainTeams>
												</strapi:foreachDomainTeams>
											<label for="Domains">Domains</label>
											<br>
												<strapi:foreachDomains var="domainsIter">
													<strapi:domains>
													<input type="radio" name="ID" value="<strapi:domainsID />"><label for="ID"><strapi:domainsID /></label>
													<br>
													</strapi:domains>
												</strapi:foreachDomains>
											<label for="domainId">DomainId</label>
											<input type="text" id="domainId" name="domainId" size="40" value="<strapi:domainsCrossCuttingTeamsLinksDomainId />">
											<br>

											<label for="domainTeamId">DomainTeamId</label>
											<input type="text" id="domainTeamId" name="domainTeamId" size="40" value="<strapi:domainsCrossCuttingTeamsLinksDomainTeamId />">
											<br>

											<label for="domainTeamOrder">DomainTeamOrder</label>
											<input type="text" id="domainTeamOrder" name="domainTeamOrder" size="40" value="<strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:domainsCrossCuttingTeamsLinks>
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
		<fmt:parseNumber var="domainId" value="${param.domainId}" />
		<fmt:parseNumber var="domainTeamId" value="${param.domainTeamId}" />
		<strapi:domainsCrossCuttingTeamsLinks ID="${ID}">
			<strapi:domainsCrossCuttingTeamsLinksDomainId domainId = "${param.domainId}" />
			<strapi:domainsCrossCuttingTeamsLinksDomainTeamId domainTeamId = "${param.domainTeamId}" />
			<strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder domainTeamOrder = "${param.domainTeamOrder}" />
		</strapi:domainsCrossCuttingTeamsLinks>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>