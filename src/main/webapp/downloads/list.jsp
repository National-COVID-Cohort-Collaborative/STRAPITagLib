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

						<h2>Downloads List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>IntroBlock</th>
									<th>PrepareHeader</th>
									<th>PrepareBlock</th>
									<th>SubmitHeader</th>
									<th>SubmitBlock1</th>
									<th>SubmitBlock2</th>
									<th>TrackHeader</th>
									<th>TrackBlock1</th>
									<th>TrackBlock2</th>
									<th>TrackBlock3</th>
									<th>DownloadHeader</th>
									<th>DownloadBlock1</th>
									<th>DownloadBlock2</th>
									<th>DownloadBlock3</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDownloads var="idIter">
									<strapi:downloads>
										<tr>
											<td><a href="../downloads/show.jsp?ID=<strapi:downloadsID />"><strapi:downloadsID /></a></td>
											<td><strapi:downloadsHeader /></td>
											<td><strapi:downloadsIntroBlock /></td>
											<td><strapi:downloadsPrepareHeader /></td>
											<td><strapi:downloadsPrepareBlock /></td>
											<td><strapi:downloadsSubmitHeader /></td>
											<td><strapi:downloadsSubmitBlock1 /></td>
											<td><strapi:downloadsSubmitBlock2 /></td>
											<td><strapi:downloadsTrackHeader /></td>
											<td><strapi:downloadsTrackBlock1 /></td>
											<td><strapi:downloadsTrackBlock2 /></td>
											<td><strapi:downloadsTrackBlock3 /></td>
											<td><strapi:downloadsDownloadHeader /></td>
											<td><strapi:downloadsDownloadBlock1 /></td>
											<td><strapi:downloadsDownloadBlock2 /></td>
											<td><strapi:downloadsDownloadBlock3 /></td>
											<td><strapi:downloadsCreatedAt /></td>
											<td><strapi:downloadsUpdatedAt /></td>
											<td><strapi:downloadsPublishedAt /></td>
											<td><strapi:downloadsCreatedById /></td>
											<td><strapi:downloadsUpdatedById /></td>
											<td><a href="../downloads/edit.jsp?ID=<strapi:downloadsID />">edit</a></td>
											<td><a href="../downloads/delete.jsp?ID=<strapi:downloadsID />">delete</a></td>
										</tr>
									</strapi:downloads>
								</strapi:foreachDownloads>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../downloads/add.jsp">add Downloads</a>
						<br/><br/>

		<strapi:foreachDownloads var="idIter">
			<strapi:downloads>
						<a href="../../strapi/downloads/downloads.jsp?ID=<strapi:downloadsID />"><strapi:downloadsID /></a>
		<strapi:downloadsHeader />
		<strapi:downloadsIntroBlock />
		<strapi:downloadsPrepareHeader />
		<strapi:downloadsPrepareBlock />
		<strapi:downloadsSubmitHeader />
		<strapi:downloadsSubmitBlock1 />
		<strapi:downloadsSubmitBlock2 />
		<strapi:downloadsTrackHeader />
		<strapi:downloadsTrackBlock1 />
		<strapi:downloadsTrackBlock2 />
		<strapi:downloadsTrackBlock3 />
		<strapi:downloadsDownloadHeader />
		<strapi:downloadsDownloadBlock1 />
		<strapi:downloadsDownloadBlock2 />
		<strapi:downloadsDownloadBlock3 />
		<strapi:downloadsCreatedAt />
		<strapi:downloadsUpdatedAt />
		<strapi:downloadsPublishedAt />
		<strapi:downloadsCreatedById />
		<strapi:downloadsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:downloads>
			</strapi:foreachDownloads>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>