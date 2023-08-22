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
<strapi:tools ID="${ID}">
	<h2>Tools: <strapi:toolsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Header2</th>
			<th>Block1</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:toolsID />"><strapi:toolsID /></a></td>
				<td><strapi:toolsHeader /></td>
				<td><strapi:toolsHeader2 /></td>
				<td><strapi:toolsBlock1 /></td>
				<td><strapi:toolsCreatedAt /></td>
				<td><strapi:toolsUpdatedAt /></td>
				<td><strapi:toolsPublishedAt /></td>
				<td><strapi:toolsCreatedById /></td>
				<td><strapi:toolsUpdatedById /></td>
			</tr>
		</table>

						<h2>ToolsDescriptionLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ToolId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachToolsDescriptionLinks var="idIter">
									<strapi:toolsDescriptionLinks>
										<tr>
											<td><a href="../toolsDescriptionLinks/show.jsp?ID=<strapi:toolsDescriptionLinksID />"><strapi:toolsDescriptionLinksID /></a></td>
											<td><strapi:toolsDescriptionLinksToolId /></td>
											<td><strapi:toolsDescriptionLinksContentImageBlockLeftId /></td>
											<td><a href="../toolsDescriptionLinks/edit.jsp?ID=<strapi:toolsDescriptionLinksID />">edit</a></td>
											<td><a href="../toolsDescriptionLinks/delete.jsp?ID=<strapi:toolsDescriptionLinksID />">delete</a></td>
										</tr>
									</strapi:toolsDescriptionLinks>
								</strapi:foreachToolsDescriptionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../toolsDescriptionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ToolsDescriptionLinks</a>
						<br/><br/>

		<strapi:foreachToolsDescriptionLinks var="idIter">
			<strapi:toolsDescriptionLinks>
						<a href="../../strapi/toolsDescriptionLinks/toolsDescriptionLinks.jsp?ID=<strapi:toolsDescriptionLinksID />"><strapi:toolsDescriptionLinksID /></a>
		<strapi:toolsDescriptionLinksToolId />
		<strapi:toolsDescriptionLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:toolsDescriptionLinks>
			</strapi:foreachToolsDescriptionLinks>

						<h2>ToolsToolLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ToolId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachToolsToolLinks var="idIter">
									<strapi:toolsToolLinks>
										<tr>
											<td><a href="../toolsToolLinks/show.jsp?ID=<strapi:toolsToolLinksID />"><strapi:toolsToolLinksID /></a></td>
											<td><strapi:toolsToolLinksToolId /></td>
											<td><strapi:toolsToolLinksContentImageBlockRightId /></td>
											<td><strapi:toolsToolLinksContentImageBlockRightOrder /></td>
											<td><a href="../toolsToolLinks/edit.jsp?ID=<strapi:toolsToolLinksID />">edit</a></td>
											<td><a href="../toolsToolLinks/delete.jsp?ID=<strapi:toolsToolLinksID />">delete</a></td>
										</tr>
									</strapi:toolsToolLinks>
								</strapi:foreachToolsToolLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../toolsToolLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ToolsToolLinks</a>
						<br/><br/>

		<strapi:foreachToolsToolLinks var="idIter">
			<strapi:toolsToolLinks>
						<a href="../../strapi/toolsToolLinks/toolsToolLinks.jsp?ID=<strapi:toolsToolLinksID />"><strapi:toolsToolLinksID /></a>
		<strapi:toolsToolLinksToolId />
		<strapi:toolsToolLinksContentImageBlockRightId />
		<strapi:toolsToolLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:toolsToolLinks>
			</strapi:foreachToolsToolLinks>
</strapi:tools>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>