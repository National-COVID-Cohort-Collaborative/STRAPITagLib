package org.cd2h.STRAPITagLib.tenantDurRequests;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantDurRequestsRequestHeader extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantDurRequestsRequestHeader.class);

	public int doStartTag() throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			if (!theTenantDurRequests.commitNeeded) {
				pageContext.getOut().print(theTenantDurRequests.getRequestHeader());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for requestHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for requestHeader tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for requestHeader tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getRequestHeader() throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			return theTenantDurRequests.getRequestHeader();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for requestHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for requestHeader tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for requestHeader tag ");
			}
		}
	}

	public void setRequestHeader(String requestHeader) throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			theTenantDurRequests.setRequestHeader(requestHeader);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for requestHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for requestHeader tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for requestHeader tag ");
			}
		}
	}

}
