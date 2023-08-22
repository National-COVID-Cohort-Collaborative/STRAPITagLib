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
<strapi:domains ID="${ID}">
	<h2>Domains: <strapi:domainsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Block1</th>
			<th>Block2</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:domainsID />"><strapi:domainsID /></a></td>
				<td><strapi:domainsBlock1 /></td>
				<td><strapi:domainsBlock2 /></td>
				<td><strapi:domainsCreatedAt /></td>
				<td><strapi:domainsUpdatedAt /></td>
				<td><strapi:domainsPublishedAt /></td>
				<td><strapi:domainsCreatedById /></td>
				<td><strapi:domainsUpdatedById /></td>
			</tr>
		</table>

						<h2>DomainsCrossCuttingTeamsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainId</th>
									<th>DomainTeamId</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainsCrossCuttingTeamsLinks var="idIter">
									<strapi:domainsCrossCuttingTeamsLinks>
										<tr>
											<td><a href="../domainsCrossCuttingTeamsLinks/show.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />"><strapi:domainsCrossCuttingTeamsLinksID /></a></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainId /></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainTeamId /></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder /></td>
											<td><a href="../domainsCrossCuttingTeamsLinks/edit.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />">edit</a></td>
											<td><a href="../domainsCrossCuttingTeamsLinks/delete.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />">delete</a></td>
										</tr>
									</strapi:domainsCrossCuttingTeamsLinks>
								</strapi:foreachDomainsCrossCuttingTeamsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainsCrossCuttingTeamsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainsCrossCuttingTeamsLinks</a>
						<br/><br/>

		<strapi:foreachDomainsCrossCuttingTeamsLinks var="idIter">
			<strapi:domainsCrossCuttingTeamsLinks>
						<a href="../../strapi/domainsCrossCuttingTeamsLinks/domainsCrossCuttingTeamsLinks.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />"><strapi:domainsCrossCuttingTeamsLinksID /></a>
		<strapi:domainsCrossCuttingTeamsLinksDomainId />
		<strapi:domainsCrossCuttingTeamsLinksDomainTeamId />
		<strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainsCrossCuttingTeamsLinks>
			</strapi:foreachDomainsCrossCuttingTeamsLinks>

						<h2>DomainsDomainTeamsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainId</th>
									<th>DomainTeamId</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainsDomainTeamsLinks var="idIter">
									<strapi:domainsDomainTeamsLinks>
										<tr>
											<td><a href="../domainsDomainTeamsLinks/show.jsp?ID=<strapi:domainsDomainTeamsLinksID />"><strapi:domainsDomainTeamsLinksID /></a></td>
											<td><strapi:domainsDomainTeamsLinksDomainId /></td>
											<td><strapi:domainsDomainTeamsLinksDomainTeamId /></td>
											<td><strapi:domainsDomainTeamsLinksDomainTeamOrder /></td>
											<td><a href="../domainsDomainTeamsLinks/edit.jsp?ID=<strapi:domainsDomainTeamsLinksID />">edit</a></td>
											<td><a href="../domainsDomainTeamsLinks/delete.jsp?ID=<strapi:domainsDomainTeamsLinksID />">delete</a></td>
										</tr>
									</strapi:domainsDomainTeamsLinks>
								</strapi:foreachDomainsDomainTeamsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainsDomainTeamsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainsDomainTeamsLinks</a>
						<br/><br/>

		<strapi:foreachDomainsDomainTeamsLinks var="idIter">
			<strapi:domainsDomainTeamsLinks>
						<a href="../../strapi/domainsDomainTeamsLinks/domainsDomainTeamsLinks.jsp?ID=<strapi:domainsDomainTeamsLinksID />"><strapi:domainsDomainTeamsLinksID /></a>
		<strapi:domainsDomainTeamsLinksDomainId />
		<strapi:domainsDomainTeamsLinksDomainTeamId />
		<strapi:domainsDomainTeamsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainsDomainTeamsLinks>
			</strapi:foreachDomainsDomainTeamsLinks>
</strapi:domains>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>