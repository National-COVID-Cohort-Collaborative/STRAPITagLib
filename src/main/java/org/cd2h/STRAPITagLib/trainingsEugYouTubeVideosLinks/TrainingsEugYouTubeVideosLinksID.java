package org.cd2h.STRAPITagLib.trainingsEugYouTubeVideosLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TrainingsEugYouTubeVideosLinksID extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TrainingsEugYouTubeVideosLinksID.class);

	public int doStartTag() throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			if (!theTrainingsEugYouTubeVideosLinks.commitNeeded) {
				pageContext.getOut().print(theTrainingsEugYouTubeVideosLinks.getID());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getID() throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			return theTrainingsEugYouTubeVideosLinks.getID();
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ");
			}
		}
	}

	public void setID(int ID) throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			theTrainingsEugYouTubeVideosLinks.setID(ID);
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for ID tag ");
			}
		}
	}

}
