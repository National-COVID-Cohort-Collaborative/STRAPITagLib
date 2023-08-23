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
										<legend>TrainingsPortalResourcesLinks</legend>
										<label for="Trainings">Trainings</label>
										<br>
											<strapi:foreachTrainings var="trainingsIter">
												<strapi:trainings>
												<input type="radio" name="ID" value="<strapi:trainingsID />"><label for="ID"><strapi:trainingsID /></label>
												<br>
												</strapi:trainings>
											</strapi:foreachTrainings>
										<label for="trainingId">TrainingId</label>
										<input type="text" id="trainingId" name="trainingId" size="40" value="">
										<br>

										<label for="resourceId">ResourceId</label>
										<input type="text" id="resourceId" name="resourceId" size="40" value="">
										<br>

										<label for="resourceOrder">ResourceOrder</label>
										<input type="text" id="resourceOrder" name="resourceOrder" size="40" value="">
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
										<legend>TrainingsPortalResourcesLinks</legend>
										<label for="Resources">Resources</label>
										<br>
											<strapi:foreachResources var="resourcesIter">
												<strapi:resources>
												<input type="radio" name="ID" value="<strapi:resourcesID />"><label for="ID"><strapi:resourcesID /></label>
												<br>
												</strapi:resources>
											</strapi:foreachResources>
										<label for="trainingId">TrainingId</label>
										<input type="text" id="trainingId" name="trainingId" size="40" value="">
										<br>

										<label for="resourceId">ResourceId</label>
										<input type="text" id="resourceId" name="resourceId" size="40" value="">
										<br>

										<label for="resourceOrder">ResourceOrder</label>
										<input type="text" id="resourceOrder" name="resourceOrder" size="40" value="">
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
		<strapi:resources ID = "${param.ID}">
		<strapi:trainings ID = "${param.ID}">
			<strapi:trainingsPortalResourcesLinks>
				<strapi:trainingsPortalResourcesLinksTrainingId trainingId = "${param.trainingId}" />
				<strapi:trainingsPortalResourcesLinksResourceId resourceId = "${param.resourceId}" />
				<strapi:trainingsPortalResourcesLinksResourceOrder resourceOrder = "${param.resourceOrder}" />
			</strapi:trainingsPortalResourcesLinks>
		</strapi:trainings>
		</strapi:resources>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>