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
										<legend>PartnersPartnerGroupLinks</legend>
										<label for="Partners">Partners</label>
										<br>
											<strapi:foreachPartners var="partnersIter">
												<strapi:partners>
												<input type="radio" name="ID" value="<strapi:partnersID />"><label for="ID"><strapi:partnersID /></label>
												<br>
												</strapi:partners>
											</strapi:foreachPartners>
										<label for="partnerId">PartnerId</label>
										<input type="text" id="partnerId" name="partnerId" size="40" value="">
										<br>

										<label for="partnerGroupId">PartnerGroupId</label>
										<input type="text" id="partnerGroupId" name="partnerGroupId" size="40" value="">
										<br>

										<label for="partnerOrder">PartnerOrder</label>
										<input type="text" id="partnerOrder" name="partnerOrder" size="40" value="">
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
										<legend>PartnersPartnerGroupLinks</legend>
										<label for="PartnerGroups">PartnerGroups</label>
										<br>
											<strapi:foreachPartnerGroups var="partnerGroupsIter">
												<strapi:partnerGroups>
												<input type="radio" name="ID" value="<strapi:partnerGroupsID />"><label for="ID"><strapi:partnerGroupsID /></label>
												<br>
												</strapi:partnerGroups>
											</strapi:foreachPartnerGroups>
										<label for="partnerId">PartnerId</label>
										<input type="text" id="partnerId" name="partnerId" size="40" value="">
										<br>

										<label for="partnerGroupId">PartnerGroupId</label>
										<input type="text" id="partnerGroupId" name="partnerGroupId" size="40" value="">
										<br>

										<label for="partnerOrder">PartnerOrder</label>
										<input type="text" id="partnerOrder" name="partnerOrder" size="40" value="">
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
		<strapi:partnerGroups ID = "${param.ID}">
		<strapi:partners ID = "${param.ID}">
			<strapi:partnersPartnerGroupLinks>
				<strapi:partnersPartnerGroupLinksPartnerId partnerId = "${param.partnerId}" />
				<strapi:partnersPartnerGroupLinksPartnerGroupId partnerGroupId = "${param.partnerGroupId}" />
				<strapi:partnersPartnerGroupLinksPartnerOrder partnerOrder = "${param.partnerOrder}" />
			</strapi:partnersPartnerGroupLinks>
		</strapi:partners>
		</strapi:partnerGroups>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>