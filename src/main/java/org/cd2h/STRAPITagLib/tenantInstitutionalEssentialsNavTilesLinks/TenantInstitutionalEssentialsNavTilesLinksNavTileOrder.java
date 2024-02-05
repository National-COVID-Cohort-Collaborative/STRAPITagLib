package org.cd2h.STRAPITagLib.tenantInstitutionalEssentialsNavTilesLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantInstitutionalEssentialsNavTilesLinksNavTileOrder extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantInstitutionalEssentialsNavTilesLinksNavTileOrder.class);

	public int doStartTag() throws JspException {
		try {
			TenantInstitutionalEssentialsNavTilesLinks theTenantInstitutionalEssentialsNavTilesLinks = (TenantInstitutionalEssentialsNavTilesLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsNavTilesLinks.class);
			if (!theTenantInstitutionalEssentialsNavTilesLinks.commitNeeded) {
				pageContext.getOut().print(theTenantInstitutionalEssentialsNavTilesLinks.getNavTileOrder());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ");
			}

		}
		return SKIP_BODY;
	}

	public double getNavTileOrder() throws JspException {
		try {
			TenantInstitutionalEssentialsNavTilesLinks theTenantInstitutionalEssentialsNavTilesLinks = (TenantInstitutionalEssentialsNavTilesLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsNavTilesLinks.class);
			return theTenantInstitutionalEssentialsNavTilesLinks.getNavTileOrder();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ");
				parent.doEndTag();
				return 0.0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ");
			}
		}
	}

	public void setNavTileOrder(double navTileOrder) throws JspException {
		try {
			TenantInstitutionalEssentialsNavTilesLinks theTenantInstitutionalEssentialsNavTilesLinks = (TenantInstitutionalEssentialsNavTilesLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsNavTilesLinks.class);
			theTenantInstitutionalEssentialsNavTilesLinks.setNavTileOrder(navTileOrder);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for navTileOrder tag ");
			}
		}
	}

}
