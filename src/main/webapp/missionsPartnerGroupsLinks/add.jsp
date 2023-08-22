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
										<legend>MissionsPartnerGroupsLinks</legend>
										<label for="PartnerGroups">PartnerGroups</label>
										<br>
											<strapi:foreachPartnerGroups var="partnerGroupsIter">
												<strapi:partnerGroups>
												<input type="radio" name="ID" value="<strapi:partnerGroupsID />"><label for="ID"><strapi:partnerGroupsID /></label>
												<br>
												</strapi:partnerGroups>
											</strapi:foreachPartnerGroups>
										<label for="missionId">MissionId</label>
										<input type="text" id="missionId" name="missionId" size="40" value="">
										<br>

										<label for="partnerGroupId">PartnerGroupId</label>
										<input type="text" id="partnerGroupId" name="partnerGroupId" size="40" value="">
										<br>

										<label for="partnerGroupOrder">PartnerGroupOrder</label>
										<input type="text" id="partnerGroupOrder" name="partnerGroupOrder" size="40" value="">
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
										<legend>MissionsPartnerGroupsLinks</legend>
										<label for="Missions">Missions</label>
										<br>
											<strapi:foreachMissions var="missionsIter">
												<strapi:missions>
												<input type="radio" name="ID" value="<strapi:missionsID />"><label for="ID"><strapi:missionsID /></label>
												<br>
												</strapi:missions>
											</strapi:foreachMissions>
										<label for="missionId">MissionId</label>
										<input type="text" id="missionId" name="missionId" size="40" value="">
										<br>

										<label for="partnerGroupId">PartnerGroupId</label>
										<input type="text" id="partnerGroupId" name="partnerGroupId" size="40" value="">
										<br>

										<label for="partnerGroupOrder">PartnerGroupOrder</label>
										<input type="text" id="partnerGroupOrder" name="partnerGroupOrder" size="40" value="">
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
		<strapi:missions ID = "${param.ID}">
		<strapi:partnerGroups ID = "${param.ID}">
			<strapi:missionsPartnerGroupsLinks>
				<strapi:missionsPartnerGroupsLinksMissionId missionId = "${param.missionId}" />
				<strapi:missionsPartnerGroupsLinksPartnerGroupId partnerGroupId = "${param.partnerGroupId}" />
				<strapi:missionsPartnerGroupsLinksPartnerGroupOrder partnerGroupOrder = "${param.partnerGroupOrder}" />
			</strapi:missionsPartnerGroupsLinks>
		</strapi:partnerGroups>
		</strapi:missions>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>