package org.cd2h.STRAPITagLib.tenantResearcherEssentialsJoinBlockLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantResearcherEssentialsJoinBlockLinksTenantResearcherEssentialId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantResearcherEssentialsJoinBlockLinksTenantResearcherEssentialId.class);

	public int doStartTag() throws JspException {
		try {
			TenantResearcherEssentialsJoinBlockLinks theTenantResearcherEssentialsJoinBlockLinks = (TenantResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsJoinBlockLinks.class);
			if (!theTenantResearcherEssentialsJoinBlockLinks.commitNeeded) {
				pageContext.getOut().print(theTenantResearcherEssentialsJoinBlockLinks.getTenantResearcherEssentialId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTenantResearcherEssentialId() throws JspException {
		try {
			TenantResearcherEssentialsJoinBlockLinks theTenantResearcherEssentialsJoinBlockLinks = (TenantResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsJoinBlockLinks.class);
			return theTenantResearcherEssentialsJoinBlockLinks.getTenantResearcherEssentialId();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ");
			}
		}
	}

	public void setTenantResearcherEssentialId(int tenantResearcherEssentialId) throws JspException {
		try {
			TenantResearcherEssentialsJoinBlockLinks theTenantResearcherEssentialsJoinBlockLinks = (TenantResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsJoinBlockLinks.class);
			theTenantResearcherEssentialsJoinBlockLinks.setTenantResearcherEssentialId(tenantResearcherEssentialId);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for tenantResearcherEssentialId tag ");
			}
		}
	}

}
