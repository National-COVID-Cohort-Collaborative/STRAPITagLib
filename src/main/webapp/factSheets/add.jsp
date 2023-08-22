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
								<form action="add.jsp" method="post" >
									<fieldset>
										<legend>FactSheets</legend>
										<label for="header">Header</label>
										<input type="text" id="header" name="header" size="40" value="">
										<br>

										<label for="block1">Block1</label>
										<input type="text" id="block1" name="block1" size="40" value="">
										<br>

										<label for="block2">Block2</label>
										<input type="text" id="block2" name="block2" size="40" value="">
										<br>

										<label for="block3">Block3</label>
										<input type="text" id="block3" name="block3" size="40" value="">
										<br>

										<label for="createdAt">CreatedAt</label>
										<input type="text" id="createdAt" name="createdAt" size="40" value="">
										<br>

										<label for="updatedAt">UpdatedAt</label>
										<input type="text" id="updatedAt" name="updatedAt" size="40" value="">
										<br>

										<label for="publishedAt">PublishedAt</label>
										<input type="text" id="publishedAt" name="publishedAt" size="40" value="">
										<br>

										<label for="createdById">CreatedById</label>
										<input type="text" id="createdById" name="createdById" size="40" value="">
										<br>

										<label for="updatedById">UpdatedById</label>
										<input type="text" id="updatedById" name="updatedById" size="40" value="">
										<br>

										<input type="submit" name="submit" value="Save">
										<input type="submit" name="submit" value="Cancel">
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
		<strapi:factSheets>
			<strapi:factSheetsHeader header = "${param.header}" />
			<strapi:factSheetsBlock1 block1 = "${param.block1}" />
			<strapi:factSheetsBlock2 block2 = "${param.block2}" />
			<strapi:factSheetsBlock3 block3 = "${param.block3}" />
			<strapi:factSheetsCreatedAt createdAt = "${param.createdAt}" />
			<strapi:factSheetsUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:factSheetsPublishedAt publishedAt = "${param.publishedAt}" />
			<strapi:factSheetsCreatedById createdById = "${param.createdById}" />
			<strapi:factSheetsUpdatedById updatedById = "${param.updatedById}" />
		</strapi:factSheets>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>