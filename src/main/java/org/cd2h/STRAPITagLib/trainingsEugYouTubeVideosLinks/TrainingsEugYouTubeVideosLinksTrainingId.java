package org.cd2h.STRAPITagLib.trainingsEugYouTubeVideosLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TrainingsEugYouTubeVideosLinksTrainingId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TrainingsEugYouTubeVideosLinksTrainingId.class);

	public int doStartTag() throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			if (!theTrainingsEugYouTubeVideosLinks.commitNeeded) {
				pageContext.getOut().print(theTrainingsEugYouTubeVideosLinks.getTrainingId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTrainingId() throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			return theTrainingsEugYouTubeVideosLinks.getTrainingId();
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ");
			}
		}
	}

	public void setTrainingId(int trainingId) throws JspException {
		try {
			TrainingsEugYouTubeVideosLinks theTrainingsEugYouTubeVideosLinks = (TrainingsEugYouTubeVideosLinks)findAncestorWithClass(this, TrainingsEugYouTubeVideosLinks.class);
			theTrainingsEugYouTubeVideosLinks.setTrainingId(trainingId);
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsEugYouTubeVideosLinks for trainingId tag ");
			}
		}
	}

}
