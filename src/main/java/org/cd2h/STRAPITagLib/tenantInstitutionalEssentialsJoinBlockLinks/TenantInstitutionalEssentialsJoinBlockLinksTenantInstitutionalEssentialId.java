package org.cd2h.STRAPITagLib.tenantInstitutionalEssentialsJoinBlockLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantInstitutionalEssentialsJoinBlockLinksTenantInstitutionalEssentialId.class);

	public int doStartTag() throws JspException {
		try {
			TenantInstitutionalEssentialsJoinBlockLinks theTenantInstitutionalEssentialsJoinBlockLinks = (TenantInstitutionalEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsJoinBlockLinks.class);
			if (!theTenantInstitutionalEssentialsJoinBlockLinks.commitNeeded) {
				pageContext.getOut().print(theTenantInstitutionalEssentialsJoinBlockLinks.getTenantInstitutionalEssentialId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTenantInstitutionalEssentialId() throws JspException {
		try {
			TenantInstitutionalEssentialsJoinBlockLinks theTenantInstitutionalEssentialsJoinBlockLinks = (TenantInstitutionalEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsJoinBlockLinks.class);
			return theTenantInstitutionalEssentialsJoinBlockLinks.getTenantInstitutionalEssentialId();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ");
			}
		}
	}

	public void setTenantInstitutionalEssentialId(int tenantInstitutionalEssentialId) throws JspException {
		try {
			TenantInstitutionalEssentialsJoinBlockLinks theTenantInstitutionalEssentialsJoinBlockLinks = (TenantInstitutionalEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantInstitutionalEssentialsJoinBlockLinks.class);
			theTenantInstitutionalEssentialsJoinBlockLinks.setTenantInstitutionalEssentialId(tenantInstitutionalEssentialId);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantInstitutionalEssentialsJoinBlockLinks for tenantInstitutionalEssentialId tag ");
			}
		}
	}

}
