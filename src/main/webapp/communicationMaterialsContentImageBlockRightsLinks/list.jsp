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

						<h2>CommunicationMaterialsContentImageBlockRightsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>CommunicationMaterialId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks var="idIter">
									<strapi:communicationMaterialsContentImageBlockRightsLinks>
										<tr>
											<td><a href="../communicationMaterialsContentImageBlockRightsLinks/show.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />"><strapi:communicationMaterialsContentImageBlockRightsLinksID /></a></td>
											<td><strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId /></td>
											<td><strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId /></td>
											<td><strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
											<td><a href="../communicationMaterialsContentImageBlockRightsLinks/edit.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />">edit</a></td>
											<td><a href="../communicationMaterialsContentImageBlockRightsLinks/delete.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />">delete</a></td>
										</tr>
									</strapi:communicationMaterialsContentImageBlockRightsLinks>
								</strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../communicationMaterialsContentImageBlockRightsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add CommunicationMaterialsContentImageBlockRightsLinks</a>
						<br/><br/>

		<strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks var="idIter">
			<strapi:communicationMaterialsContentImageBlockRightsLinks>
						<a href="../../strapi/communicationMaterialsContentImageBlockRightsLinks/communicationMaterialsContentImageBlockRightsLinks.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />"><strapi:communicationMaterialsContentImageBlockRightsLinksID /></a>
		<strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId />
		<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId />
		<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:communicationMaterialsContentImageBlockRightsLinks>
			</strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>