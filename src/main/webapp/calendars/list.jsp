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

						<h2>Calendars List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachCalendars var="idIter">
									<strapi:calendars>
										<tr>
											<td><a href="../calendars/show.jsp?ID=<strapi:calendarsID />"><strapi:calendarsID /></a></td>
											<td><strapi:calendarsHeader /></td>
											<td><strapi:calendarsCreatedAt /></td>
											<td><strapi:calendarsUpdatedAt /></td>
											<td><strapi:calendarsPublishedAt /></td>
											<td><strapi:calendarsCreatedById /></td>
											<td><strapi:calendarsUpdatedById /></td>
											<td><a href="../calendars/edit.jsp?ID=<strapi:calendarsID />">edit</a></td>
											<td><a href="../calendars/delete.jsp?ID=<strapi:calendarsID />">delete</a></td>
										</tr>
									</strapi:calendars>
								</strapi:foreachCalendars>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../calendars/add.jsp">add Calendars</a>
						<br/><br/>

		<strapi:foreachCalendars var="idIter">
			<strapi:calendars>
						<a href="../../strapi/calendars/calendars.jsp?ID=<strapi:calendarsID />"><strapi:calendarsID /></a>
		<strapi:calendarsHeader />
		<strapi:calendarsCreatedAt />
		<strapi:calendarsUpdatedAt />
		<strapi:calendarsPublishedAt />
		<strapi:calendarsCreatedById />
		<strapi:calendarsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:calendars>
			</strapi:foreachCalendars>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>