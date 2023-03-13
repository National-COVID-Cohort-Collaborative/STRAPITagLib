package org.cd2h.STRAPITagLib.acknowledgementsContentImageBlockRightsLinks;


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
import org.cd2h.STRAPITagLib.acknowledgements.Acknowledgements;
import org.cd2h.STRAPITagLib.contentImageBlockRights.ContentImageBlockRights;

@SuppressWarnings("serial")
public class AcknowledgementsContentImageBlockRightsLinksDeleter extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int acknowledgementId = 0;
    int contentImageBlockRightId = 0;
    double contentImageBlockRightOrder = 0.0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(AcknowledgementsContentImageBlockRightsLinksDeleter.class);


    ResultSet rs = null;
    String var = null;
    int rsCount = 0;

    public int doStartTag() throws JspException {
		Acknowledgements theAcknowledgements = (Acknowledgements)findAncestorWithClass(this, Acknowledgements.class);
		if (theAcknowledgements!= null)
			parentEntities.addElement(theAcknowledgements);
		ContentImageBlockRights theContentImageBlockRights = (ContentImageBlockRights)findAncestorWithClass(this, ContentImageBlockRights.class);
		if (theContentImageBlockRights!= null)
			parentEntities.addElement(theContentImageBlockRights);

		if (theAcknowledgements == null) {
		} else {
			acknowledgementId = theAcknowledgements.getID();
		}
		if (theContentImageBlockRights == null) {
		} else {
			contentImageBlockRightId = theContentImageBlockRights.getID();
		}


        PreparedStatement stat;
        try {
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("DELETE from strapi.acknowledgements_content_image_block_rights_links where 1=1"
                                                        + (ID == 0 ? "" : " and id = ? ")
                                                        + (acknowledgementId == 0 ? "" : " and acknowledgement_id = ? ")
                                                        + (contentImageBlockRightId == 0 ? "" : " and content_image_block_right_id = ? "));
            if (ID != 0) stat.setInt(webapp_keySeq++, ID);
			if (acknowledgementId != 0) stat.setInt(webapp_keySeq++, acknowledgementId);
			if (contentImageBlockRightId != 0) stat.setInt(webapp_keySeq++, contentImageBlockRightId);
            stat.execute();

			webapp_keySeq = 1;
        } catch (SQLException e) {
            log.error("JDBC error generating AcknowledgementsContentImageBlockRightsLinks deleter", e);

			clearServiceState();
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating AcknowledgementsContentImageBlockRightsLinks deleter");
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating AcknowledgementsContentImageBlockRightsLinks deleter",e);
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
