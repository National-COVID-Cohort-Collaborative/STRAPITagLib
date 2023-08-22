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
<strapi:faqLists ID="${ID}">
	<h2>FaqLists: <strapi:faqListsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Subheader</th>
			<th>IntroBlock</th>
			<th>EnclaveHeader</th>
			<th>DomainHeader</th>
			<th>PhenotypeHeader</th>
			<th>HarmonizationHeader</th>
			<th>AnalyticsHeader</th>
			<th>SyntheticHeader</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:faqListsID />"><strapi:faqListsID /></a></td>
				<td><strapi:faqListsHeader /></td>
				<td><strapi:faqListsSubheader /></td>
				<td><strapi:faqListsIntroBlock /></td>
				<td><strapi:faqListsEnclaveHeader /></td>
				<td><strapi:faqListsDomainHeader /></td>
				<td><strapi:faqListsPhenotypeHeader /></td>
				<td><strapi:faqListsHarmonizationHeader /></td>
				<td><strapi:faqListsAnalyticsHeader /></td>
				<td><strapi:faqListsSyntheticHeader /></td>
				<td><strapi:faqListsCreatedAt /></td>
				<td><strapi:faqListsUpdatedAt /></td>
				<td><strapi:faqListsPublishedAt /></td>
				<td><strapi:faqListsCreatedById /></td>
				<td><strapi:faqListsUpdatedById /></td>
			</tr>
		</table>

						<h2>FaqListsAnalyticsFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FaqListId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqListsAnalyticsFaqsLinks var="idIter">
									<strapi:faqListsAnalyticsFaqsLinks>
										<tr>
											<td><a href="../faqListsAnalyticsFaqsLinks/show.jsp?ID=<strapi:faqListsAnalyticsFaqsLinksID />"><strapi:faqListsAnalyticsFaqsLinksID /></a></td>
											<td><strapi:faqListsAnalyticsFaqsLinksFaqListId /></td>
											<td><strapi:faqListsAnalyticsFaqsLinksFaqId /></td>
											<td><strapi:faqListsAnalyticsFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsAnalyticsFaqsLinks/edit.jsp?ID=<strapi:faqListsAnalyticsFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsAnalyticsFaqsLinks/delete.jsp?ID=<strapi:faqListsAnalyticsFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsAnalyticsFaqsLinks>
								</strapi:foreachFaqListsAnalyticsFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsAnalyticsFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsAnalyticsFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsAnalyticsFaqsLinks var="idIter">
			<strapi:faqListsAnalyticsFaqsLinks>
						<a href="../../strapi/faqListsAnalyticsFaqsLinks/faqListsAnalyticsFaqsLinks.jsp?ID=<strapi:faqListsAnalyticsFaqsLinksID />"><strapi:faqListsAnalyticsFaqsLinksID /></a>
		<strapi:faqListsAnalyticsFaqsLinksFaqListId />
		<strapi:faqListsAnalyticsFaqsLinksFaqId />
		<strapi:faqListsAnalyticsFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsAnalyticsFaqsLinks>
			</strapi:foreachFaqListsAnalyticsFaqsLinks>

						<h2>FaqListsDomainFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FaqListId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqListsDomainFaqsLinks var="idIter">
									<strapi:faqListsDomainFaqsLinks>
										<tr>
											<td><a href="../faqListsDomainFaqsLinks/show.jsp?ID=<strapi:faqListsDomainFaqsLinksID />"><strapi:faqListsDomainFaqsLinksID /></a></td>
											<td><strapi:faqListsDomainFaqsLinksFaqListId /></td>
											<td><strapi:faqListsDomainFaqsLinksFaqId /></td>
											<td><strapi:faqListsDomainFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsDomainFaqsLinks/edit.jsp?ID=<strapi:faqListsDomainFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsDomainFaqsLinks/delete.jsp?ID=<strapi:faqListsDomainFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsDomainFaqsLinks>
								</strapi:foreachFaqListsDomainFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsDomainFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsDomainFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsDomainFaqsLinks var="idIter">
			<strapi:faqListsDomainFaqsLinks>
						<a href="../../strapi/faqListsDomainFaqsLinks/faqListsDomainFaqsLinks.jsp?ID=<strapi:faqListsDomainFaqsLinksID />"><strapi:faqListsDomainFaqsLinksID /></a>
		<strapi:faqListsDomainFaqsLinksFaqListId />
		<strapi:faqListsDomainFaqsLinksFaqId />
		<strapi:faqListsDomainFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsDomainFaqsLinks>
			</strapi:foreachFaqListsDomainFaqsLinks>

						<h2>FaqListsEnclaveFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FaqListId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqListsEnclaveFaqsLinks var="idIter">
									<strapi:faqListsEnclaveFaqsLinks>
										<tr>
											<td><a href="../faqListsEnclaveFaqsLinks/show.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />"><strapi:faqListsEnclaveFaqsLinksID /></a></td>
											<td><strapi:faqListsEnclaveFaqsLinksFaqListId /></td>
											<td><strapi:faqListsEnclaveFaqsLinksFaqId /></td>
											<td><strapi:faqListsEnclaveFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsEnclaveFaqsLinks/edit.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsEnclaveFaqsLinks/delete.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsEnclaveFaqsLinks>
								</strapi:foreachFaqListsEnclaveFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsEnclaveFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsEnclaveFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsEnclaveFaqsLinks var="idIter">
			<strapi:faqListsEnclaveFaqsLinks>
						<a href="../../strapi/faqListsEnclaveFaqsLinks/faqListsEnclaveFaqsLinks.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />"><strapi:faqListsEnclaveFaqsLinksID /></a>
		<strapi:faqListsEnclaveFaqsLinksFaqListId />
		<strapi:faqListsEnclaveFaqsLinksFaqId />
		<strapi:faqListsEnclaveFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsEnclaveFaqsLinks>
			</strapi:foreachFaqListsEnclaveFaqsLinks>

						<h2>FaqListsHarmonizationFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FaqListId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqListsHarmonizationFaqsLinks var="idIter">
									<strapi:faqListsHarmonizationFaqsLinks>
										<tr>
											<td><a href="../faqListsHarmonizationFaqsLinks/show.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />"><strapi:faqListsHarmonizationFaqsLinksID /></a></td>
											<td><strapi:faqListsHarmonizationFaqsLinksFaqListId /></td>
											<td><strapi:faqListsHarmonizationFaqsLinksFaqId /></td>
											<td><strapi:faqListsHarmonizationFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsHarmonizationFaqsLinks/edit.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsHarmonizationFaqsLinks/delete.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsHarmonizationFaqsLinks>
								</strapi:foreachFaqListsHarmonizationFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsHarmonizationFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsHarmonizationFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsHarmonizationFaqsLinks var="idIter">
			<strapi:faqListsHarmonizationFaqsLinks>
						<a href="../../strapi/faqListsHarmonizationFaqsLinks/faqListsHarmonizationFaqsLinks.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />"><strapi:faqListsHarmonizationFaqsLinksID /></a>
		<strapi:faqListsHarmonizationFaqsLinksFaqListId />
		<strapi:faqListsHarmonizationFaqsLinksFaqId />
		<strapi:faqListsHarmonizationFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsHarmonizationFaqsLinks>
			</strapi:foreachFaqListsHarmonizationFaqsLinks>

						<h2>FaqListsPhenotypeFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FaqListId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqListsPhenotypeFaqsLinks var="idIter">
									<strapi:faqListsPhenotypeFaqsLinks>
										<tr>
											<td><a href="../faqListsPhenotypeFaqsLinks/show.jsp?ID=<strapi:faqListsPhenotypeFaqsLinksID />"><strapi:faqListsPhenotypeFaqsLinksID /></a></td>
											<td><strapi:faqListsPhenotypeFaqsLinksFaqListId /></td>
											<td><strapi:faqListsPhenotypeFaqsLinksFaqId /></td>
											<td><strapi:faqListsPhenotypeFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsPhenotypeFaqsLinks/edit.jsp?ID=<strapi:faqListsPhenotypeFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsPhenotypeFaqsLinks/delete.jsp?ID=<strapi:faqListsPhenotypeFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsPhenotypeFaqsLinks>
								</strapi:foreachFaqListsPhenotypeFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsPhenotypeFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsPhenotypeFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsPhenotypeFaqsLinks var="idIter">
			<strapi:faqListsPhenotypeFaqsLinks>
						<a href="../../strapi/faqListsPhenotypeFaqsLinks/faqListsPhenotypeFaqsLinks.jsp?ID=<strapi:faqListsPhenotypeFaqsLinksID />"><strapi:faqListsPhenotypeFaqsLinksID /></a>
		<strapi:faqListsPhenotypeFaqsLinksFaqListId />
		<strapi:faqListsPhenotypeFaqsLinksFaqId />
		<strapi:faqListsPhenotypeFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsPhenotypeFaqsLinks>
			</strapi:foreachFaqListsPhenotypeFaqsLinks>

						<h2>FaqListsSyntheticFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FaqListId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqListsSyntheticFaqsLinks var="idIter">
									<strapi:faqListsSyntheticFaqsLinks>
										<tr>
											<td><a href="../faqListsSyntheticFaqsLinks/show.jsp?ID=<strapi:faqListsSyntheticFaqsLinksID />"><strapi:faqListsSyntheticFaqsLinksID /></a></td>
											<td><strapi:faqListsSyntheticFaqsLinksFaqListId /></td>
											<td><strapi:faqListsSyntheticFaqsLinksFaqId /></td>
											<td><strapi:faqListsSyntheticFaqsLinksFaqOrder /></td>
											<td><a href="../faqListsSyntheticFaqsLinks/edit.jsp?ID=<strapi:faqListsSyntheticFaqsLinksID />">edit</a></td>
											<td><a href="../faqListsSyntheticFaqsLinks/delete.jsp?ID=<strapi:faqListsSyntheticFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:faqListsSyntheticFaqsLinks>
								</strapi:foreachFaqListsSyntheticFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqListsSyntheticFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FaqListsSyntheticFaqsLinks</a>
						<br/><br/>

		<strapi:foreachFaqListsSyntheticFaqsLinks var="idIter">
			<strapi:faqListsSyntheticFaqsLinks>
						<a href="../../strapi/faqListsSyntheticFaqsLinks/faqListsSyntheticFaqsLinks.jsp?ID=<strapi:faqListsSyntheticFaqsLinksID />"><strapi:faqListsSyntheticFaqsLinksID /></a>
		<strapi:faqListsSyntheticFaqsLinksFaqListId />
		<strapi:faqListsSyntheticFaqsLinksFaqId />
		<strapi:faqListsSyntheticFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqListsSyntheticFaqsLinks>
			</strapi:foreachFaqListsSyntheticFaqsLinks>
</strapi:faqLists>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>