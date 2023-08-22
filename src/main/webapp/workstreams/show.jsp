<%@ include file="../_include.jsp"  %>

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
<strapi:workstreams ID="${ID}">
	<h2>Workstreams: <strapi:workstreamsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Block1</th>
			<th>Block2</th>
			<th>Events</th>
			<th>Block3</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:workstreamsID />"><strapi:workstreamsID /></a></td>
				<td><strapi:workstreamsHeader /></td>
				<td><strapi:workstreamsBlock1 /></td>
				<td><strapi:workstreamsBlock2 /></td>
				<td><strapi:workstreamsEvents /></td>
				<td><strapi:workstreamsBlock3 /></td>
				<td><strapi:workstreamsCreatedAt /></td>
				<td><strapi:workstreamsUpdatedAt /></td>
				<td><strapi:workstreamsPublishedAt /></td>
				<td><strapi:workstreamsCreatedById /></td>
				<td><strapi:workstreamsUpdatedById /></td>
			</tr>
		</table>

						<h2>WorkstreamsIntroLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamsIntroLinks var="idIter">
									<strapi:workstreamsIntroLinks>
										<tr>
											<td><a href="../workstreamsIntroLinks/show.jsp?ID=<strapi:workstreamsIntroLinksID />"><strapi:workstreamsIntroLinksID /></a></td>
											<td><strapi:workstreamsIntroLinksWorkstreamId /></td>
											<td><strapi:workstreamsIntroLinksContentImageBlockRightId /></td>
											<td><a href="../workstreamsIntroLinks/edit.jsp?ID=<strapi:workstreamsIntroLinksID />">edit</a></td>
											<td><a href="../workstreamsIntroLinks/delete.jsp?ID=<strapi:workstreamsIntroLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamsIntroLinks>
								</strapi:foreachWorkstreamsIntroLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamsIntroLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamsIntroLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamsIntroLinks var="idIter">
			<strapi:workstreamsIntroLinks>
						<a href="../../strapi/workstreamsIntroLinks/workstreamsIntroLinks.jsp?ID=<strapi:workstreamsIntroLinksID />"><strapi:workstreamsIntroLinksID /></a>
		<strapi:workstreamsIntroLinksWorkstreamId />
		<strapi:workstreamsIntroLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamsIntroLinks>
			</strapi:foreachWorkstreamsIntroLinks>

						<h2>WorkstreamsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamId</th>
									<th>NavTileId</th>
									<th>NavTileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamsNavTilesLinks var="idIter">
									<strapi:workstreamsNavTilesLinks>
										<tr>
											<td><a href="../workstreamsNavTilesLinks/show.jsp?ID=<strapi:workstreamsNavTilesLinksID />"><strapi:workstreamsNavTilesLinksID /></a></td>
											<td><strapi:workstreamsNavTilesLinksWorkstreamId /></td>
											<td><strapi:workstreamsNavTilesLinksNavTileId /></td>
											<td><strapi:workstreamsNavTilesLinksNavTileOrder /></td>
											<td><a href="../workstreamsNavTilesLinks/edit.jsp?ID=<strapi:workstreamsNavTilesLinksID />">edit</a></td>
											<td><a href="../workstreamsNavTilesLinks/delete.jsp?ID=<strapi:workstreamsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamsNavTilesLinks>
								</strapi:foreachWorkstreamsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamsNavTilesLinks var="idIter">
			<strapi:workstreamsNavTilesLinks>
						<a href="../../strapi/workstreamsNavTilesLinks/workstreamsNavTilesLinks.jsp?ID=<strapi:workstreamsNavTilesLinksID />"><strapi:workstreamsNavTilesLinksID /></a>
		<strapi:workstreamsNavTilesLinksWorkstreamId />
		<strapi:workstreamsNavTilesLinksNavTileId />
		<strapi:workstreamsNavTilesLinksNavTileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamsNavTilesLinks>
			</strapi:foreachWorkstreamsNavTilesLinks>

						<h2>WorkstreamsYouTubeVideoLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamId</th>
									<th>YouTubeVideoId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamsYouTubeVideoLinks var="idIter">
									<strapi:workstreamsYouTubeVideoLinks>
										<tr>
											<td><a href="../workstreamsYouTubeVideoLinks/show.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />"><strapi:workstreamsYouTubeVideoLinksID /></a></td>
											<td><strapi:workstreamsYouTubeVideoLinksWorkstreamId /></td>
											<td><strapi:workstreamsYouTubeVideoLinksYouTubeVideoId /></td>
											<td><a href="../workstreamsYouTubeVideoLinks/edit.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />">edit</a></td>
											<td><a href="../workstreamsYouTubeVideoLinks/delete.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamsYouTubeVideoLinks>
								</strapi:foreachWorkstreamsYouTubeVideoLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamsYouTubeVideoLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamsYouTubeVideoLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamsYouTubeVideoLinks var="idIter">
			<strapi:workstreamsYouTubeVideoLinks>
						<a href="../../strapi/workstreamsYouTubeVideoLinks/workstreamsYouTubeVideoLinks.jsp?ID=<strapi:workstreamsYouTubeVideoLinksID />"><strapi:workstreamsYouTubeVideoLinksID /></a>
		<strapi:workstreamsYouTubeVideoLinksWorkstreamId />
		<strapi:workstreamsYouTubeVideoLinksYouTubeVideoId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamsYouTubeVideoLinks>
			</strapi:foreachWorkstreamsYouTubeVideoLinks>
</strapi:workstreams>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>