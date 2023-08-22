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
								<fmt:parseNumber var="ID" value="${param.ID}" />
								<strapi:workstreamInstances ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>WorkstreamInstances</legend>
											<label for="header">Header</label>
											<input type="text" id="header" name="header" size="40" value="<strapi:workstreamInstancesHeader />">
											<br>

											<label for="missionHeader">MissionHeader</label>
											<input type="text" id="missionHeader" name="missionHeader" size="40" value="<strapi:workstreamInstancesMissionHeader />">
											<br>

											<label for="missionBlock">MissionBlock</label>
											<input type="text" id="missionBlock" name="missionBlock" size="40" value="<strapi:workstreamInstancesMissionBlock />">
											<br>

											<label for="connectHeader">ConnectHeader</label>
											<input type="text" id="connectHeader" name="connectHeader" size="40" value="<strapi:workstreamInstancesConnectHeader />">
											<br>

											<label for="connectBlock">ConnectBlock</label>
											<input type="text" id="connectBlock" name="connectBlock" size="40" value="<strapi:workstreamInstancesConnectBlock />">
											<br>

											<label for="block1">Block1</label>
											<input type="text" id="block1" name="block1" size="40" value="<strapi:workstreamInstancesBlock1 />">
											<br>

											<label for="createdAt">CreatedAt</label>
											<input type="text" id="createdAt" name="createdAt" size="40" value="<strapi:workstreamInstancesCreatedAt />">
											<br>

											<label for="updatedAt">UpdatedAt</label>
											<input type="text" id="updatedAt" name="updatedAt" size="40" value="<strapi:workstreamInstancesUpdatedAt />">
											<br>

											<label for="publishedAt">PublishedAt</label>
											<input type="text" id="publishedAt" name="publishedAt" size="40" value="<strapi:workstreamInstancesPublishedAt />">
											<br>

											<label for="createdById">CreatedById</label>
											<input type="text" id="createdById" name="createdById" size="40" value="<strapi:workstreamInstancesCreatedById />">
											<br>

											<label for="updatedById">UpdatedById</label>
											<input type="text" id="updatedById" name="updatedById" size="40" value="<strapi:workstreamInstancesUpdatedById />">
											<br>

											<label for="faqHeader">FaqHeader</label>
											<input type="text" id="faqHeader" name="faqHeader" size="40" value="<strapi:workstreamInstancesFaqHeader />">
											<br>

											<label for="leadershipHeader">LeadershipHeader</label>
											<input type="text" id="leadershipHeader" name="leadershipHeader" size="40" value="<strapi:workstreamInstancesLeadershipHeader />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:workstreamInstances>
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
		<fmt:parseNumber var="createdById" value="${param.createdById}" />
		<fmt:parseNumber var="updatedById" value="${param.updatedById}" />
		<strapi:workstreamInstances ID="${ID}">
			<strapi:workstreamInstancesHeader header = "${param.header}" />
			<strapi:workstreamInstancesMissionHeader missionHeader = "${param.missionHeader}" />
			<strapi:workstreamInstancesMissionBlock missionBlock = "${param.missionBlock}" />
			<strapi:workstreamInstancesConnectHeader connectHeader = "${param.connectHeader}" />
			<strapi:workstreamInstancesConnectBlock connectBlock = "${param.connectBlock}" />
			<strapi:workstreamInstancesBlock1 block1 = "${param.block1}" />
			<strapi:workstreamInstancesCreatedAt createdAt = "${param.createdAt}" />
			<strapi:workstreamInstancesUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:workstreamInstancesPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:workstreamInstancesCreatedById createdById = "${param.createdById}" />
			<strapi:workstreamInstancesUpdatedById updatedById = "${param.updatedById}" />
			<strapi:workstreamInstancesFaqHeader faqHeader = "${param.faqHeader}" />
			<strapi:workstreamInstancesLeadershipHeader leadershipHeader = "${param.leadershipHeader}" />
		</strapi:workstreamInstances>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>