package org.cd2h.STRAPITagLib.tenantResearcherEssentialsGovernanceBlockLinks;


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
import org.cd2h.STRAPITagLib.contentImageBlockRights.ContentImageBlockRights;
import org.cd2h.STRAPITagLib.tenantResearcherEssentials.TenantResearcherEssentials;

@SuppressWarnings("serial")
public class TenantResearcherEssentialsGovernanceBlockLinksDeleter extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int tenantResearcherEssentialId = 0;
    int contentImageBlockRightId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(TenantResearcherEssentialsGovernanceBlockLinksDeleter.class);


    ResultSet rs = null;
    String var = null;
    int rsCount = 0;

    public int doStartTag() throws JspException {
		ContentImageBlockRights theContentImageBlockRights = (ContentImageBlockRights)findAncestorWithClass(this, ContentImageBlockRights.class);
		if (theContentImageBlockRights!= null)
			parentEntities.addElement(theContentImageBlockRights);
		TenantResearcherEssentials theTenantResearcherEssentials = (TenantResearcherEssentials)findAncestorWithClass(this, TenantResearcherEssentials.class);
		if (theTenantResearcherEssentials!= null)
			parentEntities.addElement(theTenantResearcherEssentials);

		if (theContentImageBlockRights == null) {
		} else {
			contentImageBlockRightId = theContentImageBlockRights.getID();
		}
		if (theTenantResearcherEssentials == null) {
		} else {
			tenantResearcherEssentialId = theTenantResearcherEssentials.getID();
		}


        PreparedStatement stat;
        try {
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("DELETE from strapi.tenant_researcher_essentials_governance_block_links where 1=1"
                                                        + (ID == 0 ? "" : " and id = ? ")
                                                        + (contentImageBlockRightId == 0 ? "" : " and content_image_block_right_id = ? ")
                                                        + (tenantResearcherEssentialId == 0 ? "" : " and tenant_researcher_essential_id = ? "));
            if (ID != 0) stat.setInt(webapp_keySeq++, ID);
			if (contentImageBlockRightId != 0) stat.setInt(webapp_keySeq++, contentImageBlockRightId);
			if (tenantResearcherEssentialId != 0) stat.setInt(webapp_keySeq++, tenantResearcherEssentialId);
            stat.execute();

			webapp_keySeq = 1;
        } catch (SQLException e) {
            log.error("JDBC error generating TenantResearcherEssentialsGovernanceBlockLinks deleter", e);

			clearServiceState();
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating TenantResearcherEssentialsGovernanceBlockLinks deleter");
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating TenantResearcherEssentialsGovernanceBlockLinks deleter",e);
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
