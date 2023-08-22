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
										<legend>Files</legend>
										<label for="name">Name</label>
										<input type="text" id="name" name="name" size="40" value="">
										<br>

										<label for="alternativeText">AlternativeText</label>
										<input type="text" id="alternativeText" name="alternativeText" size="40" value="">
										<br>

										<label for="caption">Caption</label>
										<input type="text" id="caption" name="caption" size="40" value="">
										<br>

										<label for="width">Width</label>
										<input type="text" id="width" name="width" size="40" value="">
										<br>

										<label for="height">Height</label>
										<input type="text" id="height" name="height" size="40" value="">
										<br>

										<label for="formats">Formats</label>
										<input type="text" id="formats" name="formats" size="40" value="">
										<br>

										<label for="hash">Hash</label>
										<input type="text" id="hash" name="hash" size="40" value="">
										<br>

										<label for="ext">Ext</label>
										<input type="text" id="ext" name="ext" size="40" value="">
										<br>

										<label for="mime">Mime</label>
										<input type="text" id="mime" name="mime" size="40" value="">
										<br>

										<label for="size">Size</label>
										<input type="text" id="size" name="size" size="40" value="">
										<br>

										<label for="url">Url</label>
										<input type="text" id="url" name="url" size="40" value="">
										<br>

										<label for="previewUrl">PreviewUrl</label>
										<input type="text" id="previewUrl" name="previewUrl" size="40" value="">
										<br>

										<label for="provider">Provider</label>
										<input type="text" id="provider" name="provider" size="40" value="">
										<br>

										<label for="providerMetadata">ProviderMetadata</label>
										<input type="text" id="providerMetadata" name="providerMetadata" size="40" value="">
										<br>

										<label for="folderPath">FolderPath</label>
										<input type="text" id="folderPath" name="folderPath" size="40" value="">
										<br>

										<label for="createdAt">CreatedAt</label>
										<input type="text" id="createdAt" name="createdAt" size="40" value="">
										<br>

										<label for="updatedAt">UpdatedAt</label>
										<input type="text" id="updatedAt" name="updatedAt" size="40" value="">
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
		<strapi:files>
			<strapi:filesName name = "${param.name}" />
			<strapi:filesAlternativeText alternativeText = "${param.alternativeText}" />
			<strapi:filesCaption caption = "${param.caption}" />
			<strapi:filesWidth width = "${param.width}" />
			<strapi:filesHeight height = "${param.height}" />
			<strapi:filesFormats formats = "${param.formats}" />
			<strapi:filesHash hash = "${param.hash}" />
			<strapi:filesExt ext = "${param.ext}" />
			<strapi:filesMime mime = "${param.mime}" />
			<strapi:filesSize size = "${param.size}" />
			<strapi:filesUrl url = "${param.url}" />
			<strapi:filesPreviewUrl previewUrl = "${param.previewUrl}" />
			<strapi:filesProvider provider = "${param.provider}" />
			<strapi:filesProviderMetadata providerMetadata = "${param.providerMetadata}" />
			<strapi:filesFolderPath folderPath = "${param.folderPath}" />
			<strapi:filesCreatedAt createdAt = "${param.createdAt}" />
			<strapi:filesUpdatedAt updatedAt = "${param.updatedAt}" />
			<strapi:filesCreatedById createdById = "${param.createdById}" />
			<strapi:filesUpdatedById updatedById = "${param.updatedById}" />
		</strapi:files>
		<c:redirect url="list.jsp" />
	</c:when>
	<c:otherwise>
		A task is required for this function.
	</c:otherwise>
</c:choose>