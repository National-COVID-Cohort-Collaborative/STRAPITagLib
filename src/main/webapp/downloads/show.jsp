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
<strapi:downloads ID="${ID}">
	<h2>Downloads: <strapi:downloadsID /></h2>
		<table border=1>
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
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:downloadsID />"><strapi:downloadsID /></a></td>
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
			</tr>
		</table>
</strapi:downloads>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>