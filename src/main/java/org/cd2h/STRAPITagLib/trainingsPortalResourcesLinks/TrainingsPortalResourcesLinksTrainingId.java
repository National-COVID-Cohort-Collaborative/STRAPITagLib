package org.cd2h.STRAPITagLib.trainingsPortalResourcesLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TrainingsPortalResourcesLinksTrainingId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TrainingsPortalResourcesLinksTrainingId.class);

	public int doStartTag() throws JspException {
		try {
			TrainingsPortalResourcesLinks theTrainingsPortalResourcesLinks = (TrainingsPortalResourcesLinks)findAncestorWithClass(this, TrainingsPortalResourcesLinks.class);
			if (!theTrainingsPortalResourcesLinks.commitNeeded) {
				pageContext.getOut().print(theTrainingsPortalResourcesLinks.getTrainingId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTrainingId() throws JspException {
		try {
			TrainingsPortalResourcesLinks theTrainingsPortalResourcesLinks = (TrainingsPortalResourcesLinks)findAncestorWithClass(this, TrainingsPortalResourcesLinks.class);
			return theTrainingsPortalResourcesLinks.getTrainingId();
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ");
			}
		}
	}

	public void setTrainingId(int trainingId) throws JspException {
		try {
			TrainingsPortalResourcesLinks theTrainingsPortalResourcesLinks = (TrainingsPortalResourcesLinks)findAncestorWithClass(this, TrainingsPortalResourcesLinks.class);
			theTrainingsPortalResourcesLinks.setTrainingId(trainingId);
		} catch (Exception e) {
			log.error("Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TrainingsPortalResourcesLinks for trainingId tag ");
			}
		}
	}

}
