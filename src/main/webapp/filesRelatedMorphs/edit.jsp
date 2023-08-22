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
								<strapi:filesRelatedMorphs ID="${ID}">
									<form action="edit.jsp" method="post" >
										<fieldset>
											<legend>FilesRelatedMorphs</legend>
											<label for="fileId">FileId</label>
											<input type="text" id="fileId" name="fileId" size="40" value="<strapi:filesRelatedMorphsFileId />">
											<br>

											<label for="relatedId">RelatedId</label>
											<input type="text" id="relatedId" name="relatedId" size="40" value="<strapi:filesRelatedMorphsRelatedId />">
											<br>

											<label for="relatedType">RelatedType</label>
											<input type="text" id="relatedType" name="relatedType" size="40" value="<strapi:filesRelatedMorphsRelatedType />">
											<br>

											<label for="field">Field</label>
											<input type="text" id="field" name="field" size="40" value="<strapi:filesRelatedMorphsField />">
											<br>

											<label for="order">Order</label>
											<input type="text" id="order" name="order" size="40" value="<strapi:filesRelatedMorphsOrder />">
											<br>

											<input type="submit" name="submit" value="Save">
											<input type="submit" name="submit" value="Cancel">
											<input type="hidden" name="ID" value="${param.ID}">
											<input type="hidden" name="ID" value="${param.ID}">
										</fieldset>
									</form>
								</strapi:filesRelatedMorphs>
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
		<fmt:parseNumber var="fileId" value="${param.fileId}" />
		<fmt:parseNumber var="relatedId" value="${param.relatedId}" />
		<strapi:filesRelatedMorphs ID="${ID}">
			<strapi:filesRelatedMorphsFileId fileId = "${param.fileId}" />
			<strapi:filesRelatedMorphsRelatedId relatedId = "${param.relatedId}" />
			<strapi:filesRelatedMorphsRelatedType relatedType = "${param.relatedType}" />
			<strapi:filesRelatedMorphsField field = "${param.field}" />
			<strapi:filesRelatedMorphsOrder order = "${param.order}" />
		</strapi:filesRelatedMorphs>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>