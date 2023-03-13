package org.cd2h.STRAPITagLib.downloads;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DownloadsTrackBlock1 extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DownloadsTrackBlock1.class);

	public int doStartTag() throws JspException {
		try {
			Downloads theDownloads = (Downloads)findAncestorWithClass(this, Downloads.class);
			if (!theDownloads.commitNeeded) {
				pageContext.getOut().print(theDownloads.getTrackBlock1());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Downloads for trackBlock1 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Downloads for trackBlock1 tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Downloads for trackBlock1 tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getTrackBlock1() throws JspException {
		try {
			Downloads theDownloads = (Downloads)findAncestorWithClass(this, Downloads.class);
			return theDownloads.getTrackBlock1();
		} catch (Exception e) {
			log.error("Can't find enclosing Downloads for trackBlock1 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Downloads for trackBlock1 tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing Downloads for trackBlock1 tag ");
			}
		}
	}

	public void setTrackBlock1(String trackBlock1) throws JspException {
		try {
			Downloads theDownloads = (Downloads)findAncestorWithClass(this, Downloads.class);
			theDownloads.setTrackBlock1(trackBlock1);
		} catch (Exception e) {
			log.error("Can't find enclosing Downloads for trackBlock1 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Downloads for trackBlock1 tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Downloads for trackBlock1 tag ");
			}
		}
	}

}
