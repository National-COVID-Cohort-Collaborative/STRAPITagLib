package org.cd2h.STRAPITagLib.tenantResearcherEssentialsDomainBlockLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantResearcherEssentialsDomainBlockLinksTenantResearcherEssentialId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantResearcherEssentialsDomainBlockLinksTenantResearcherEssentialId.class);

	public int doStartTag() throws JspException {
		try {
			TenantResearcherEssentialsDomainBlockLinks theTenantResearcherEssentialsDomainBlockLinks = (TenantResearcherEssentialsDomainBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsDomainBlockLinks.class);
			if (!theTenantResearcherEssentialsDomainBlockLinks.commitNeeded) {
				pageContext.getOut().print(theTenantResearcherEssentialsDomainBlockLinks.getTenantResearcherEssentialId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTenantResearcherEssentialId() throws JspException {
		try {
			TenantResearcherEssentialsDomainBlockLinks theTenantResearcherEssentialsDomainBlockLinks = (TenantResearcherEssentialsDomainBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsDomainBlockLinks.class);
			return theTenantResearcherEssentialsDomainBlockLinks.getTenantResearcherEssentialId();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ");
			}
		}
	}

	public void setTenantResearcherEssentialId(int tenantResearcherEssentialId) throws JspException {
		try {
			TenantResearcherEssentialsDomainBlockLinks theTenantResearcherEssentialsDomainBlockLinks = (TenantResearcherEssentialsDomainBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsDomainBlockLinks.class);
			theTenantResearcherEssentialsDomainBlockLinks.setTenantResearcherEssentialId(tenantResearcherEssentialId);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsDomainBlockLinks for tenantResearcherEssentialId tag ");
			}
		}
	}

}
