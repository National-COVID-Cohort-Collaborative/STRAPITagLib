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

						<h2>FaqLists List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
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
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFaqLists var="idIter">
									<strapi:faqLists>
										<tr>
											<td><a href="../faqLists/show.jsp?ID=<strapi:faqListsID />"><strapi:faqListsID /></a></td>
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
											<td><a href="../faqLists/edit.jsp?ID=<strapi:faqListsID />">edit</a></td>
											<td><a href="../faqLists/delete.jsp?ID=<strapi:faqListsID />">delete</a></td>
										</tr>
									</strapi:faqLists>
								</strapi:foreachFaqLists>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../faqLists/add.jsp">add FaqLists</a>
						<br/><br/>

		<strapi:foreachFaqLists var="idIter">
			<strapi:faqLists>
						<a href="../../strapi/faqLists/faqLists.jsp?ID=<strapi:faqListsID />"><strapi:faqListsID /></a>
		<strapi:faqListsHeader />
		<strapi:faqListsSubheader />
		<strapi:faqListsIntroBlock />
		<strapi:faqListsEnclaveHeader />
		<strapi:faqListsDomainHeader />
		<strapi:faqListsPhenotypeHeader />
		<strapi:faqListsHarmonizationHeader />
		<strapi:faqListsAnalyticsHeader />
		<strapi:faqListsSyntheticHeader />
		<strapi:faqListsCreatedAt />
		<strapi:faqListsUpdatedAt />
		<strapi:faqListsPublishedAt />
		<strapi:faqListsCreatedById />
		<strapi:faqListsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:faqLists>
			</strapi:foreachFaqLists>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>