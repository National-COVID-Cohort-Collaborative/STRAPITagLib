package org.cd2h.STRAPITagLib.tenantInstitutionalEssentialsStepLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId.class);

	public int doStartTag() throws JspException {
		try {
			TenantInstitutionalEssentialsStepLinks theTenantInstitutionalEssentialsStepLinks = (TenantInstitutionalEssentialsStepLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsStepLinks.class);
			if (!theTenantInstitutionalEssentialsStepLinks.commitNeeded) {
				pageContext.getOut().print(theTenantInstitutionalEssentialsStepLinks.getTenantInstitutionalEssentialId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTenantInstitutionalEssentialId() throws JspException {
		try {
			TenantInstitutionalEssentialsStepLinks theTenantInstitutionalEssentialsStepLinks = (TenantInstitutionalEssentialsStepLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsStepLinks.class);
			return theTenantInstitutionalEssentialsStepLinks.getTenantInstitutionalEssentialId();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ");
			}
		}
	}

	public void setTenantInstitutionalEssentialId(int tenantInstitutionalEssentialId) throws JspException {
		try {
			TenantInstitutionalEssentialsStepLinks theTenantInstitutionalEssentialsStepLinks = (TenantInstitutionalEssentialsStepLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsStepLinks.class);
			theTenantInstitutionalEssentialsStepLinks.setTenantInstitutionalEssentialId(tenantInstitutionalEssentialId);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsStepLinks for tenantInstitutionalEssentialId tag ");
			}
		}
	}

}
