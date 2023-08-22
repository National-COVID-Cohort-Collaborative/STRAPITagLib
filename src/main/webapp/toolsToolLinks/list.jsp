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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>