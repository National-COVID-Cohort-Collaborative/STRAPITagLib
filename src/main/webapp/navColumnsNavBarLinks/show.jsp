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
<strapi:navColumnsNavBarLinks ID="${ID}">
	<h2>NavColumnsNavBarLinks: <strapi:navColumnsNavBarLinksID /></h2>
<ul>
	<li><a href="../navBars/show.jsp?ID=<strapi:navColumnsNavBarLinksNavBarId />">NavBars</a>
	<li><a href="../navColumns/show.jsp?ID=<strapi:navColumnsNavBarLinksNavColumnId />">NavColumns</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>NavColumnId</th>
			<th>NavBarId</th>
			<th>NavColumnOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:navColumnsNavBarLinksID />"><strapi:navColumnsNavBarLinksID /></a></td>
				<td><strapi:navColumnsNavBarLinksNavColumnId /></td>
				<td><strapi:navColumnsNavBarLinksNavBarId /></td>
				<td><strapi:navColumnsNavBarLinksNavColumnOrder /></td>
			</tr>
		</table>
</strapi:navColumnsNavBarLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>