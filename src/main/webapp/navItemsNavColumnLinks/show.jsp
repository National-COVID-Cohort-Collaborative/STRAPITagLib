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
<strapi:navItemsNavColumnLinks ID="${ID}">
	<h2>NavItemsNavColumnLinks: <strapi:navItemsNavColumnLinksID /></h2>
<ul>
	<li><a href="../navColumns/show.jsp?ID=<strapi:navItemsNavColumnLinksNavColumnId />">NavColumns</a>
	<li><a href="../navItems/show.jsp?ID=<strapi:navItemsNavColumnLinksNavItemId />">NavItems</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>NavItemId</th>
			<th>NavColumnId</th>
			<th>NavItemOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:navItemsNavColumnLinksID />"><strapi:navItemsNavColumnLinksID /></a></td>
				<td><strapi:navItemsNavColumnLinksNavItemId /></td>
				<td><strapi:navItemsNavColumnLinksNavColumnId /></td>
				<td><strapi:navItemsNavColumnLinksNavItemOrder /></td>
			</tr>
		</table>
</strapi:navItemsNavColumnLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>