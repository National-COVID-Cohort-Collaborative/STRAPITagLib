package org.cd2h.STRAPITagLib.tenantResearcherEssentialsNavTilesLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantResearcherEssentialsNavTilesLinksNavTileOrder extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantResearcherEssentialsNavTilesLinksNavTileOrder.class);

	public int doStartTag() throws JspException {
		try {
			TenantResearcherEssentialsNavTilesLinks theTenantResearcherEssentialsNavTilesLinks = (TenantResearcherEssentialsNavTilesLinks)findAncestorWithClass(this, TenantResearcherEssentialsNavTilesLinks.class);
			if (!theTenantResearcherEssentialsNavTilesLinks.commitNeeded) {
				pageContext.getOut().print(theTenantResearcherEssentialsNavTilesLinks.getNavTileOrder());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ");
			}

		}
		return SKIP_BODY;
	}

	public double getNavTileOrder() throws JspException {
		try {
			TenantResearcherEssentialsNavTilesLinks theTenantResearcherEssentialsNavTilesLinks = (TenantResearcherEssentialsNavTilesLinks)findAncestorWithClass(this, TenantResearcherEssentialsNavTilesLinks.class);
			return theTenantResearcherEssentialsNavTilesLinks.getNavTileOrder();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ");
				parent.doEndTag();
				return 0.0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ");
			}
		}
	}

	public void setNavTileOrder(double navTileOrder) throws JspException {
		try {
			TenantResearcherEssentialsNavTilesLinks theTenantResearcherEssentialsNavTilesLinks = (TenantResearcherEssentialsNavTilesLinks)findAncestorWithClass(this, TenantResearcherEssentialsNavTilesLinks.class);
			theTenantResearcherEssentialsNavTilesLinks.setNavTileOrder(navTileOrder);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsNavTilesLinks for navTileOrder tag ");
			}
		}
	}

}
