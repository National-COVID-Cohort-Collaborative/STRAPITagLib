package org.cd2h.STRAPITagLib.redirects;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import java.sql.Timestamp;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class RedirectsUpdatedAt extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(RedirectsUpdatedAt.class);

	public int doStartTag() throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			if (!theRedirects.commitNeeded) {
				pageContext.getOut().print(theRedirects.getUpdatedAt());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Redirects for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Redirects for updatedAt tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for updatedAt tag ");
			}

		}
		return SKIP_BODY;
	}

	public Timestamp getUpdatedAt() throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			return theRedirects.getUpdatedAt();
		} catch (Exception e) {
			log.error("Can't find enclosing Redirects for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Redirects for updatedAt tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for updatedAt tag ");
			}
		}
	}

	public void setUpdatedAt(Timestamp updatedAt) throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			theRedirects.setUpdatedAt(updatedAt);
		} catch (Exception e) {
			log.error("Can't find enclosing Redirects for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Redirects for updatedAt tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for updatedAt tag ");
			}
		}
	}

}
