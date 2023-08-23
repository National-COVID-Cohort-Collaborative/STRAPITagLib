package org.cd2h.STRAPITagLib.trainingsEugYouTubeVideosLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TrainingsEugYouTubeVideosLinksYouTubeVideoId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TrainingsEugYouTubeVideosLinksYouTubeVideoId.class);

	public int doStartTag() throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			if (!theTrainingsEugYouTubeVideosLinks.commitNeeded) {
				pageContext.getOut().print(theTrainingsEugYouTubeVideosLinks.getYouTubeVideoId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getYouTubeVideoId() throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			return theTrainingsEugYouTubeVideosLinks.getYouTubeVideoId();
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ");
			}
		}
	}

	public void setYouTubeVideoId(int youTubeVideoId) throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			theTrainingsEugYouTubeVideosLinks.setYouTubeVideoId(youTubeVideoId);
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for youTubeVideoId tag ");
			}
		}
	}

}
