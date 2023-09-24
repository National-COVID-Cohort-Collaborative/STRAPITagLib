package org.cd2h.STRAPITagLib.redirects;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;
import java.sql.Timestamp;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class RedirectsPublishedAtToNow extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(RedirectsPublishedAtToNow.class);


	public int doStartTag() throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			theRedirects.setPublishedAtToNow( );
		} catch (Exception e) {
			log.error(" Can't find enclosing Redirects for publishedAt tag ", e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing Redirects for publishedAt tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for publishedAt tag ");
			}

		}
		return SKIP_BODY;
	}

	public Timestamp getPublishedAt() throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			return theRedirects.getPublishedAt();
		} catch (Exception e) {

			log.error("Can't find enclosing Redirects for publishedAt tag ", e);

			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing Redirects for publishedAt tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for publishedAt tag ");
			}

		}
	}

	public void setPublishedAt() throws JspException {
		try {
			Redirects theRedirects = (Redirects)findAncestorWithClass(this, Redirects.class);
			theRedirects.setPublishedAtToNow( );
		} catch (Exception e) {

			log.error("Can't find enclosing Redirects for publishedAt tag ", e);

			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing Redirects for publishedAt tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Redirects for publishedAt tag ");
			}

		}
	}
}