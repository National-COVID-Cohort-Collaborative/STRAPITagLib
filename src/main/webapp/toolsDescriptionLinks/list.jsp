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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>