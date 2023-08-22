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
<strapi:faqListsEnclaveFaqsLinks ID="${ID}">
	<h2>FaqListsEnclaveFaqsLinks: <strapi:faqListsEnclaveFaqsLinksID /></h2>
<ul>
	<li><a href="../faqLists/show.jsp?ID=<strapi:faqListsEnclaveFaqsLinksFaqListId />">FaqLists</a>
	<li><a href="../faqs/show.jsp?ID=<strapi:faqListsEnclaveFaqsLinksFaqId />">Faqs</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>FaqListId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:faqListsEnclaveFaqsLinksID />"><strapi:faqListsEnclaveFaqsLinksID /></a></td>
				<td><strapi:faqListsEnclaveFaqsLinksFaqListId /></td>
				<td><strapi:faqListsEnclaveFaqsLinksFaqId /></td>
				<td><strapi:faqListsEnclaveFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:faqListsEnclaveFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>