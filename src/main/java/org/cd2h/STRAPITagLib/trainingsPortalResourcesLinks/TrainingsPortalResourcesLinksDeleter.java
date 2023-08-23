package org.cd2h.STRAPITagLib.trainingsPortalResourcesLinks;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.STRAPITagLibBodyTagSupport;
import org.cd2h.STRAPITagLib.resources.Resources;
import org.cd2h.STRAPITagLib.trainings.Trainings;

@SuppressWarnings("serial")
public class TrainingsPortalResourcesLinksDeleter extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int trainingId = 0;
    int resourceId = 0;
    double resourceOrder = 0.0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(TrainingsPortalResourcesLinksDeleter.class);


    ResultSet rs = null;
    String var = null;
    int rsCount = 0;

    public int doStartTag() throws JspException {
		Resources theResources = (Resources)findAncestorWithClass(this, Resources.class);
		if (theResources!= null)
			parentEntities.addElement(theResources);
		Trainings theTrainings = (Trainings)findAncestorWithClass(this, Trainings.class);
		if (theTrainings!= null)
			parentEntities.addElement(theTrainings);

		if (theResources == null) {
		} else {
			resourceId = theResources.getID();
		}
		if (theTrainings == null) {
		} else {
			trainingId = theTrainings.getID();
		}


        PreparedStatement stat;
        try {
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("DELETE from strapi.trainings_portal_resources_links where 1=1"
                                                        + (ID == 0 ? "" : " and id = ? ")
                                                        + (resourceId == 0 ? "" : " and resource_id = ? ")
                                                        + (trainingId == 0 ? "" : " and training_id = ? "));
            if (ID != 0) stat.setInt(webapp_keySeq++, ID);
			if (resourceId != 0) stat.setInt(webapp_keySeq++, resourceId);
			if (trainingId != 0) stat.setInt(webapp_keySeq++, trainingId);
            stat.execute();

			webapp_keySeq = 1;
        } catch (SQLException e) {
            log.error("JDBC error generating TrainingsPortalResourcesLinks deleter", e);

			clearServiceState();
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating TrainingsPortalResourcesLinks deleter");
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating TrainingsPortalResourcesLinks deleter",e);
			}

        } finally {
            freeConnection();
        }

        return SKIP_BODY;
    }

	public int doEndTag() throws JspException {

		clearServiceState();
		Boolean error = (Boolean) pageContext.getAttribute("tagError");
		if(error != null && error){

			freeConnection();

			Exception e = (Exception) pageContext.getAttribute("tagErrorException");
			String message = (String) pageContext.getAttribute("tagErrorMessage");

			Tag parent = getParent();
			if(parent != null){
				return parent.doEndTag();
			}else if(e != null && message != null){
				throw new JspException(message,e);
			}else if(parent == null){
				pageContext.removeAttribute("tagError");
				pageContext.removeAttribute("tagErrorException");
				pageContext.removeAttribute("tagErrorMessage");
			}
		}
		return super.doEndTag();
	}

    private void clearServiceState() {
        ID = 0;
        parentEntities = new Vector<STRAPITagLibTagSupport>();

        this.rs = null;
        this.var = null;
        this.rsCount = 0;
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
    }



	public int getID () {
		return ID;
	}

	public void setID (int ID) {
		this.ID = ID;
	}

	public int getActualID () {
		return ID;
	}
}
