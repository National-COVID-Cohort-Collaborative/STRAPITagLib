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
<strapi:accountCreations ID="${ID}">
	<h2>AccountCreations: <strapi:accountCreationsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Header2</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>BeforeStartingHeader</th>
			<th>BeforeStartingBlock</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:accountCreationsID />"><strapi:accountCreationsID /></a></td>
				<td><strapi:accountCreationsHeader /></td>
				<td><strapi:accountCreationsHeader2 /></td>
				<td><strapi:accountCreationsCreatedAt /></td>
				<td><strapi:accountCreationsUpdatedAt /></td>
				<td><strapi:accountCreationsPublishedAt /></td>
				<td><strapi:accountCreationsCreatedById /></td>
				<td><strapi:accountCreationsUpdatedById /></td>
				<td><strapi:accountCreationsBeforeStartingHeader /></td>
				<td><strapi:accountCreationsBeforeStartingBlock /></td>
			</tr>
		</table>

						<h2>AccountCreationsInstructionsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>AccountCreationId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAccountCreationsInstructionsLinks var="idIter">
									<strapi:accountCreationsInstructionsLinks>
										<tr>
											<td><a href="../accountCreationsInstructionsLinks/show.jsp?ID=<strapi:accountCreationsInstructionsLinksID />"><strapi:accountCreationsInstructionsLinksID /></a></td>
											<td><strapi:accountCreationsInstructionsLinksAccountCreationId /></td>
											<td><strapi:accountCreationsInstructionsLinksContentImageBlockRightId /></td>
											<td><strapi:accountCreationsInstructionsLinksContentImageBlockRightOrder /></td>
											<td><a href="../accountCreationsInstructionsLinks/edit.jsp?ID=<strapi:accountCreationsInstructionsLinksID />">edit</a></td>
											<td><a href="../accountCreationsInstructionsLinks/delete.jsp?ID=<strapi:accountCreationsInstructionsLinksID />">delete</a></td>
										</tr>
									</strapi:accountCreationsInstructionsLinks>
								</strapi:foreachAccountCreationsInstructionsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../accountCreationsInstructionsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add AccountCreationsInstructionsLinks</a>
						<br/><br/>

		<strapi:foreachAccountCreationsInstructionsLinks var="idIter">
			<strapi:accountCreationsInstructionsLinks>
						<a href="../../strapi/accountCreationsInstructionsLinks/accountCreationsInstructionsLinks.jsp?ID=<strapi:accountCreationsInstructionsLinksID />"><strapi:accountCreationsInstructionsLinksID /></a>
		<strapi:accountCreationsInstructionsLinksAccountCreationId />
		<strapi:accountCreationsInstructionsLinksContentImageBlockRightId />
		<strapi:accountCreationsInstructionsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:accountCreationsInstructionsLinks>
			</strapi:foreachAccountCreationsInstructionsLinks>

						<h2>AccountCreationsIntroLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>AccountCreationId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAccountCreationsIntroLinks var="idIter">
									<strapi:accountCreationsIntroLinks>
										<tr>
											<td><a href="../accountCreationsIntroLinks/show.jsp?ID=<strapi:accountCreationsIntroLinksID />"><strapi:accountCreationsIntroLinksID /></a></td>
											<td><strapi:accountCreationsIntroLinksAccountCreationId /></td>
											<td><strapi:accountCreationsIntroLinksContentImageBlockRightId /></td>
											<td><a href="../accountCreationsIntroLinks/edit.jsp?ID=<strapi:accountCreationsIntroLinksID />">edit</a></td>
											<td><a href="../accountCreationsIntroLinks/delete.jsp?ID=<strapi:accountCreationsIntroLinksID />">delete</a></td>
										</tr>
									</strapi:accountCreationsIntroLinks>
								</strapi:foreachAccountCreationsIntroLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../accountCreationsIntroLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add AccountCreationsIntroLinks</a>
						<br/><br/>

		<strapi:foreachAccountCreationsIntroLinks var="idIter">
			<strapi:accountCreationsIntroLinks>
						<a href="../../strapi/accountCreationsIntroLinks/accountCreationsIntroLinks.jsp?ID=<strapi:accountCreationsIntroLinksID />"><strapi:accountCreationsIntroLinksID /></a>
		<strapi:accountCreationsIntroLinksAccountCreationId />
		<strapi:accountCreationsIntroLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:accountCreationsIntroLinks>
			</strapi:foreachAccountCreationsIntroLinks>
</strapi:accountCreations>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>