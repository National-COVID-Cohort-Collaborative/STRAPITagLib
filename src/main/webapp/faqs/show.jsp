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
<strapi:faqs ID="${ID}">
	<h2>Faqs: <strapi:faqsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Question</th>
			<th>Answer</th>
			<th>Category</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>Label</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:faqsID />"><strapi:faqsID /></a></td>
				<td><strapi:faqsQuestion /></td>
				<td><strapi:faqsAnswer /></td>
				<td><strapi:faqsCategory /></td>
				<td><strapi:faqsCreatedAt /></td>
				<td><strapi:faqsUpdatedAt /></td>
				<td><strapi:faqsPublishedAt /></td>
				<td><strapi:faqsCreatedById /></td>
				<td><strapi:faqsUpdatedById /></td>
				<td><strapi:faqsLabel /></td>
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

						<h2>PhastrsFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PhastrId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPhastrsFaqsLinks var="idIter">
									<strapi:phastrsFaqsLinks>
										<tr>
											<td><a href="../phastrsFaqsLinks/show.jsp?ID=<strapi:phastrsFaqsLinksID />"><strapi:phastrsFaqsLinksID /></a></td>
											<td><strapi:phastrsFaqsLinksPhastrId /></td>
											<td><strapi:phastrsFaqsLinksFaqId /></td>
											<td><strapi:phastrsFaqsLinksFaqOrder /></td>
											<td><a href="../phastrsFaqsLinks/edit.jsp?ID=<strapi:phastrsFaqsLinksID />">edit</a></td>
											<td><a href="../phastrsFaqsLinks/delete.jsp?ID=<strapi:phastrsFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:phastrsFaqsLinks>
								</strapi:foreachPhastrsFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../phastrsFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PhastrsFaqsLinks</a>
						<br/><br/>

		<strapi:foreachPhastrsFaqsLinks var="idIter">
			<strapi:phastrsFaqsLinks>
						<a href="../../strapi/phastrsFaqsLinks/phastrsFaqsLinks.jsp?ID=<strapi:phastrsFaqsLinksID />"><strapi:phastrsFaqsLinksID /></a>
		<strapi:phastrsFaqsLinksPhastrId />
		<strapi:phastrsFaqsLinksFaqId />
		<strapi:phastrsFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:phastrsFaqsLinks>
			</strapi:foreachPhastrsFaqsLinks>

						<h2>PprlsFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PprlId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPprlsFaqsLinks var="idIter">
									<strapi:pprlsFaqsLinks>
										<tr>
											<td><a href="../pprlsFaqsLinks/show.jsp?ID=<strapi:pprlsFaqsLinksID />"><strapi:pprlsFaqsLinksID /></a></td>
											<td><strapi:pprlsFaqsLinksPprlId /></td>
											<td><strapi:pprlsFaqsLinksFaqId /></td>
											<td><strapi:pprlsFaqsLinksFaqOrder /></td>
											<td><a href="../pprlsFaqsLinks/edit.jsp?ID=<strapi:pprlsFaqsLinksID />">edit</a></td>
											<td><a href="../pprlsFaqsLinks/delete.jsp?ID=<strapi:pprlsFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:pprlsFaqsLinks>
								</strapi:foreachPprlsFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../pprlsFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PprlsFaqsLinks</a>
						<br/><br/>

		<strapi:foreachPprlsFaqsLinks var="idIter">
			<strapi:pprlsFaqsLinks>
						<a href="../../strapi/pprlsFaqsLinks/pprlsFaqsLinks.jsp?ID=<strapi:pprlsFaqsLinksID />"><strapi:pprlsFaqsLinksID /></a>
		<strapi:pprlsFaqsLinksPprlId />
		<strapi:pprlsFaqsLinksFaqId />
		<strapi:pprlsFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:pprlsFaqsLinks>
			</strapi:foreachPprlsFaqsLinks>

						<h2>PublicationReviewsFaqs1Links List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PublicationReviewId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPublicationReviewsFaqs1Links var="idIter">
									<strapi:publicationReviewsFaqs1Links>
										<tr>
											<td><a href="../publicationReviewsFaqs1Links/show.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />"><strapi:publicationReviewsFaqs1LinksID /></a></td>
											<td><strapi:publicationReviewsFaqs1LinksPublicationReviewId /></td>
											<td><strapi:publicationReviewsFaqs1LinksFaqId /></td>
											<td><strapi:publicationReviewsFaqs1LinksFaqOrder /></td>
											<td><a href="../publicationReviewsFaqs1Links/edit.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />">edit</a></td>
											<td><a href="../publicationReviewsFaqs1Links/delete.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />">delete</a></td>
										</tr>
									</strapi:publicationReviewsFaqs1Links>
								</strapi:foreachPublicationReviewsFaqs1Links>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../publicationReviewsFaqs1Links/add.jsp?ID=${param.ID}&ID=${param.ID}">add PublicationReviewsFaqs1Links</a>
						<br/><br/>

		<strapi:foreachPublicationReviewsFaqs1Links var="idIter">
			<strapi:publicationReviewsFaqs1Links>
						<a href="../../strapi/publicationReviewsFaqs1Links/publicationReviewsFaqs1Links.jsp?ID=<strapi:publicationReviewsFaqs1LinksID />"><strapi:publicationReviewsFaqs1LinksID /></a>
		<strapi:publicationReviewsFaqs1LinksPublicationReviewId />
		<strapi:publicationReviewsFaqs1LinksFaqId />
		<strapi:publicationReviewsFaqs1LinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:publicationReviewsFaqs1Links>
			</strapi:foreachPublicationReviewsFaqs1Links>

						<h2>PublicationReviewsFaqs2Links List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PublicationReviewId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPublicationReviewsFaqs2Links var="idIter">
									<strapi:publicationReviewsFaqs2Links>
										<tr>
											<td><a href="../publicationReviewsFaqs2Links/show.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />"><strapi:publicationReviewsFaqs2LinksID /></a></td>
											<td><strapi:publicationReviewsFaqs2LinksPublicationReviewId /></td>
											<td><strapi:publicationReviewsFaqs2LinksFaqId /></td>
											<td><strapi:publicationReviewsFaqs2LinksFaqOrder /></td>
											<td><a href="../publicationReviewsFaqs2Links/edit.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />">edit</a></td>
											<td><a href="../publicationReviewsFaqs2Links/delete.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />">delete</a></td>
										</tr>
									</strapi:publicationReviewsFaqs2Links>
								</strapi:foreachPublicationReviewsFaqs2Links>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../publicationReviewsFaqs2Links/add.jsp?ID=${param.ID}&ID=${param.ID}">add PublicationReviewsFaqs2Links</a>
						<br/><br/>

		<strapi:foreachPublicationReviewsFaqs2Links var="idIter">
			<strapi:publicationReviewsFaqs2Links>
						<a href="../../strapi/publicationReviewsFaqs2Links/publicationReviewsFaqs2Links.jsp?ID=<strapi:publicationReviewsFaqs2LinksID />"><strapi:publicationReviewsFaqs2LinksID /></a>
		<strapi:publicationReviewsFaqs2LinksPublicationReviewId />
		<strapi:publicationReviewsFaqs2LinksFaqId />
		<strapi:publicationReviewsFaqs2LinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:publicationReviewsFaqs2Links>
			</strapi:foreachPublicationReviewsFaqs2Links>

						<h2>TeamCreationsGuidelineFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsGuidelineFaqsLinks var="idIter">
									<strapi:teamCreationsGuidelineFaqsLinks>
										<tr>
											<td><a href="../teamCreationsGuidelineFaqsLinks/show.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />"><strapi:teamCreationsGuidelineFaqsLinksID /></a></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsGuidelineFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsGuidelineFaqsLinks/edit.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsGuidelineFaqsLinks/delete.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsGuidelineFaqsLinks>
								</strapi:foreachTeamCreationsGuidelineFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsGuidelineFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsGuidelineFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsGuidelineFaqsLinks var="idIter">
			<strapi:teamCreationsGuidelineFaqsLinks>
						<a href="../../strapi/teamCreationsGuidelineFaqsLinks/teamCreationsGuidelineFaqsLinks.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />"><strapi:teamCreationsGuidelineFaqsLinksID /></a>
		<strapi:teamCreationsGuidelineFaqsLinksTeamCreationId />
		<strapi:teamCreationsGuidelineFaqsLinksFaqId />
		<strapi:teamCreationsGuidelineFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsGuidelineFaqsLinks>
			</strapi:foreachTeamCreationsGuidelineFaqsLinks>

						<h2>TeamCreationsLeadFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsLeadFaqsLinks var="idIter">
									<strapi:teamCreationsLeadFaqsLinks>
										<tr>
											<td><a href="../teamCreationsLeadFaqsLinks/show.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />"><strapi:teamCreationsLeadFaqsLinksID /></a></td>
											<td><strapi:teamCreationsLeadFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsLeadFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsLeadFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsLeadFaqsLinks/edit.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsLeadFaqsLinks/delete.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsLeadFaqsLinks>
								</strapi:foreachTeamCreationsLeadFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsLeadFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsLeadFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsLeadFaqsLinks var="idIter">
			<strapi:teamCreationsLeadFaqsLinks>
						<a href="../../strapi/teamCreationsLeadFaqsLinks/teamCreationsLeadFaqsLinks.jsp?ID=<strapi:teamCreationsLeadFaqsLinksID />"><strapi:teamCreationsLeadFaqsLinksID /></a>
		<strapi:teamCreationsLeadFaqsLinksTeamCreationId />
		<strapi:teamCreationsLeadFaqsLinksFaqId />
		<strapi:teamCreationsLeadFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsLeadFaqsLinks>
			</strapi:foreachTeamCreationsLeadFaqsLinks>

						<h2>TeamCreationsReadyFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsReadyFaqsLinks var="idIter">
									<strapi:teamCreationsReadyFaqsLinks>
										<tr>
											<td><a href="../teamCreationsReadyFaqsLinks/show.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />"><strapi:teamCreationsReadyFaqsLinksID /></a></td>
											<td><strapi:teamCreationsReadyFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsReadyFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsReadyFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsReadyFaqsLinks/edit.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsReadyFaqsLinks/delete.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsReadyFaqsLinks>
								</strapi:foreachTeamCreationsReadyFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsReadyFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsReadyFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsReadyFaqsLinks var="idIter">
			<strapi:teamCreationsReadyFaqsLinks>
						<a href="../../strapi/teamCreationsReadyFaqsLinks/teamCreationsReadyFaqsLinks.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />"><strapi:teamCreationsReadyFaqsLinksID /></a>
		<strapi:teamCreationsReadyFaqsLinksTeamCreationId />
		<strapi:teamCreationsReadyFaqsLinksFaqId />
		<strapi:teamCreationsReadyFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsReadyFaqsLinks>
			</strapi:foreachTeamCreationsReadyFaqsLinks>

						<h2>TeamCreationsResourcesFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsResourcesFaqsLinks var="idIter">
									<strapi:teamCreationsResourcesFaqsLinks>
										<tr>
											<td><a href="../teamCreationsResourcesFaqsLinks/show.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />"><strapi:teamCreationsResourcesFaqsLinksID /></a></td>
											<td><strapi:teamCreationsResourcesFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsResourcesFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsResourcesFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsResourcesFaqsLinks/edit.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsResourcesFaqsLinks/delete.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsResourcesFaqsLinks>
								</strapi:foreachTeamCreationsResourcesFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsResourcesFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsResourcesFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsResourcesFaqsLinks var="idIter">
			<strapi:teamCreationsResourcesFaqsLinks>
						<a href="../../strapi/teamCreationsResourcesFaqsLinks/teamCreationsResourcesFaqsLinks.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />"><strapi:teamCreationsResourcesFaqsLinksID /></a>
		<strapi:teamCreationsResourcesFaqsLinksTeamCreationId />
		<strapi:teamCreationsResourcesFaqsLinksFaqId />
		<strapi:teamCreationsResourcesFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsResourcesFaqsLinks>
			</strapi:foreachTeamCreationsResourcesFaqsLinks>

						<h2>TeamCreationsResponsibilityFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TeamCreationId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTeamCreationsResponsibilityFaqsLinks var="idIter">
									<strapi:teamCreationsResponsibilityFaqsLinks>
										<tr>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/show.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />"><strapi:teamCreationsResponsibilityFaqsLinksID /></a></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksTeamCreationId /></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksFaqId /></td>
											<td><strapi:teamCreationsResponsibilityFaqsLinksFaqOrder /></td>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/edit.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />">edit</a></td>
											<td><a href="../teamCreationsResponsibilityFaqsLinks/delete.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:teamCreationsResponsibilityFaqsLinks>
								</strapi:foreachTeamCreationsResponsibilityFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../teamCreationsResponsibilityFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TeamCreationsResponsibilityFaqsLinks</a>
						<br/><br/>

		<strapi:foreachTeamCreationsResponsibilityFaqsLinks var="idIter">
			<strapi:teamCreationsResponsibilityFaqsLinks>
						<a href="../../strapi/teamCreationsResponsibilityFaqsLinks/teamCreationsResponsibilityFaqsLinks.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />"><strapi:teamCreationsResponsibilityFaqsLinksID /></a>
		<strapi:teamCreationsResponsibilityFaqsLinksTeamCreationId />
		<strapi:teamCreationsResponsibilityFaqsLinksFaqId />
		<strapi:teamCreationsResponsibilityFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:teamCreationsResponsibilityFaqsLinks>
			</strapi:foreachTeamCreationsResponsibilityFaqsLinks>

						<h2>WorkstreamInstancesFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamInstanceId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamInstancesFaqsLinks var="idIter">
									<strapi:workstreamInstancesFaqsLinks>
										<tr>
											<td><a href="../workstreamInstancesFaqsLinks/show.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />"><strapi:workstreamInstancesFaqsLinksID /></a></td>
											<td><strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId /></td>
											<td><strapi:workstreamInstancesFaqsLinksFaqId /></td>
											<td><strapi:workstreamInstancesFaqsLinksFaqOrder /></td>
											<td><a href="../workstreamInstancesFaqsLinks/edit.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />">edit</a></td>
											<td><a href="../workstreamInstancesFaqsLinks/delete.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamInstancesFaqsLinks>
								</strapi:foreachWorkstreamInstancesFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamInstancesFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamInstancesFaqsLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamInstancesFaqsLinks var="idIter">
			<strapi:workstreamInstancesFaqsLinks>
						<a href="../../strapi/workstreamInstancesFaqsLinks/workstreamInstancesFaqsLinks.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />"><strapi:workstreamInstancesFaqsLinksID /></a>
		<strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId />
		<strapi:workstreamInstancesFaqsLinksFaqId />
		<strapi:workstreamInstancesFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamInstancesFaqsLinks>
			</strapi:foreachWorkstreamInstancesFaqsLinks>
</strapi:faqs>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>