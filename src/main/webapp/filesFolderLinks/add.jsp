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
										<legend>FilesFolderLinks</legend>
										<label for="fileId">FileId</label>
										<input type="text" id="fileId" name="fileId" size="40" value="">
										<br>

										<label for="folderId">FolderId</label>
										<input type="text" id="folderId" name="folderId" size="40" value="">
										<br>

										<label for="fileOrder">FileOrder</label>
										<input type="text" id="fileOrder" name="fileOrder" size="40" value="">
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
		<strapi:files ID = "${param.ID}">
			<strapi:filesFolderLinks>
				<strapi:filesFolderLinksFileId fileId = "${param.fileId}" />
				<strapi:filesFolderLinksFolderId folderId = "${param.folderId}" />
				<strapi:filesFolderLinksFileOrder fileOrder = "${param.fileOrder}" />
			</strapi:filesFolderLinks>
		</strapi:files>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>