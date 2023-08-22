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
										<legend>LeadershipsBioGroupsLinks</legend>
										<label for="Leaderships">Leaderships</label>
										<br>
											<strapi:foreachLeaderships var="leadershipsIter">
												<strapi:leaderships>
												<input type="radio" name="ID" value="<strapi:leadershipsID />"><label for="ID"><strapi:leadershipsID /></label>
												<br>
												</strapi:leaderships>
											</strapi:foreachLeaderships>
										<label for="leadershipId">LeadershipId</label>
										<input type="text" id="leadershipId" name="leadershipId" size="40" value="">
										<br>

										<label for="bioGroupId">BioGroupId</label>
										<input type="text" id="bioGroupId" name="bioGroupId" size="40" value="">
										<br>

										<label for="bioGroupOrder">BioGroupOrder</label>
										<input type="text" id="bioGroupOrder" name="bioGroupOrder" size="40" value="">
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
										<legend>LeadershipsBioGroupsLinks</legend>
										<label for="BioGroups">BioGroups</label>
										<br>
											<strapi:foreachBioGroups var="bioGroupsIter">
												<strapi:bioGroups>
												<input type="radio" name="ID" value="<strapi:bioGroupsID />"><label for="ID"><strapi:bioGroupsID /></label>
												<br>
												</strapi:bioGroups>
											</strapi:foreachBioGroups>
										<label for="leadershipId">LeadershipId</label>
										<input type="text" id="leadershipId" name="leadershipId" size="40" value="">
										<br>

										<label for="bioGroupId">BioGroupId</label>
										<input type="text" id="bioGroupId" name="bioGroupId" size="40" value="">
										<br>

										<label for="bioGroupOrder">BioGroupOrder</label>
										<input type="text" id="bioGroupOrder" name="bioGroupOrder" size="40" value="">
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
		<strapi:bioGroups ID = "${param.ID}">
		<strapi:leaderships ID = "${param.ID}">
			<strapi:leadershipsBioGroupsLinks>
				<strapi:leadershipsBioGroupsLinksLeadershipId leadershipId = "${param.leadershipId}" />
				<strapi:leadershipsBioGroupsLinksBioGroupId bioGroupId = "${param.bioGroupId}" />
				<strapi:leadershipsBioGroupsLinksBioGroupOrder bioGroupOrder = "${param.bioGroupOrder}" />
			</strapi:leadershipsBioGroupsLinks>
		</strapi:leaderships>
		</strapi:bioGroups>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>