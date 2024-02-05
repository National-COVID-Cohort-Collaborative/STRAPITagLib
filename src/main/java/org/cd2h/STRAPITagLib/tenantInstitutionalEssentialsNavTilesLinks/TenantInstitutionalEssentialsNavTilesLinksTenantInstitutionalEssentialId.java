package org.cd2h.STRAPITagLib.tenantInstitutionalEssentialsNavTilesLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantInstitutionalEssentialsNavTilesLinksTenantInstitutionalEssentialId.class);

	public int doStartTag() throws JspException {
		try {
			TenantInstitutionalEssentialsNavTilesLinks theTenantInstitutionalEssentialsNavTilesLinks = (TenantInstitutionalEssentialsNavTilesLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsNavTilesLinks.class);
			if (!theTenantInstitutionalEssentialsNavTilesLinks.commitNeeded) {
				pageContext.getOut().print(theTenantInstitutionalEssentialsNavTilesLinks.getTenantInstitutionalEssentialId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTenantInstitutionalEssentialId() throws JspException {
		try {
			TenantInstitutionalEssentialsNavTilesLinks theTenantInstitutionalEssentialsNavTilesLinks = (TenantInstitutionalEssentialsNavTilesLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsNavTilesLinks.class);
			return theTenantInstitutionalEssentialsNavTilesLinks.getTenantInstitutionalEssentialId();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ");
			}
		}
	}

	public void setTenantInstitutionalEssentialId(int tenantInstitutionalEssentialId) throws JspException {
		try {
			TenantInstitutionalEssentialsNavTilesLinks theTenantInstitutionalEssentialsNavTilesLinks = (TenantInstitutionalEssentialsNavTilesLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsNavTilesLinks.class);
			theTenantInstitutionalEssentialsNavTilesLinks.setTenantInstitutionalEssentialId(tenantInstitutionalEssentialId);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsNavTilesLinks for tenantInstitutionalEssentialId tag ");
			}
		}
	}

}
