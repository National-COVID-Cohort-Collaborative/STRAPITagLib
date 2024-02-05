package org.cd2h.STRAPITagLib.tenantDurRequests;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantDurRequestsSubmitBlock2 extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantDurRequestsSubmitBlock2.class);

	public int doStartTag() throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			if (!theTenantDurRequests.commitNeeded) {
				pageContext.getOut().print(theTenantDurRequests.getSubmitBlock2());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for submitBlock2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for submitBlock2 tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for submitBlock2 tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getSubmitBlock2() throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			return theTenantDurRequests.getSubmitBlock2();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for submitBlock2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for submitBlock2 tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for submitBlock2 tag ");
			}
		}
	}

	public void setSubmitBlock2(String submitBlock2) throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			theTenantDurRequests.setSubmitBlock2(submitBlock2);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for submitBlock2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for submitBlock2 tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for submitBlock2 tag ");
			}
		}
	}

}
