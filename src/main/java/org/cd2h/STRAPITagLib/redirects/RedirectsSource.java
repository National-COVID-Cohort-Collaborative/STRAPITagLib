package org.cd2h.STRAPITagLib.redirects;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class RedirectsSource extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(RedirectsSource.class);

	public int doStartTag() throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			if (!theRedirects.commitNeeded) {
				pageContext.getOut().print(theRedirects.getSource());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Redirects for source tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Redirects for source tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for source tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getSource() throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			return theRedirects.getSource();
		} catch (Exception e) {
			log.error("Can't find enclosing Redirects for source tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Redirects for source tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for source tag ");
			}
		}
	}

	public void setSource(String source) throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			theRedirects.setSource(source);
		} catch (Exception e) {
			log.error("Can't find enclosing Redirects for source tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Redirects for source tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for source tag ");
			}
		}
	}

}
