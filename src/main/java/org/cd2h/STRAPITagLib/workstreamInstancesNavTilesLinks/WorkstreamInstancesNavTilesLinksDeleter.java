package org.cd2h.STRAPITagLib.workstreamInstancesNavTilesLinks;


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
import org.cd2h.STRAPITagLib.navTiles.NavTiles;
import org.cd2h.STRAPITagLib.workstreamInstances.WorkstreamInstances;

@SuppressWarnings("serial")
public class WorkstreamInstancesNavTilesLinksDeleter extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int workstreamInstanceId = 0;
    int navTileId = 0;
    double navTileOrder = 0.0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(WorkstreamInstancesNavTilesLinksDeleter.class);


    ResultSet rs = null;
    String var = null;
    int rsCount = 0;

    public int doStartTag() throws JspException {
		NavTiles theNavTiles = (NavTiles)findAncestorWithClass(this, NavTiles.class);
		if (theNavTiles!= null)
			parentEntities.addElement(theNavTiles);
		WorkstreamInstances theWorkstreamInstances = (WorkstreamInstances)findAncestorWithClass(this, WorkstreamInstances.class);
		if (theWorkstreamInstances!= null)
			parentEntities.addElement(theWorkstreamInstances);

		if (theNavTiles == null) {
		} else {
			navTileId = theNavTiles.getID();
		}
		if (theWorkstreamInstances == null) {
		} else {
			workstreamInstanceId = theWorkstreamInstances.getID();
		}


        PreparedStatement stat;
        try {
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("DELETE from strapi.workstream_instances_nav_tiles_links where 1=1"
                                                        + (ID == 0 ? "" : " and id = ? ")
                                                        + (navTileId == 0 ? "" : " and nav_tile_id = ? ")
                                                        + (workstreamInstanceId == 0 ? "" : " and workstream_instance_id = ? "));
            if (ID != 0) stat.setInt(webapp_keySeq++, ID);
			if (navTileId != 0) stat.setInt(webapp_keySeq++, navTileId);
			if (workstreamInstanceId != 0) stat.setInt(webapp_keySeq++, workstreamInstanceId);
            stat.execute();

			webapp_keySeq = 1;
        } catch (SQLException e) {
            log.error("JDBC error generating WorkstreamInstancesNavTilesLinks deleter", e);

			clearServiceState();
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating WorkstreamInstancesNavTilesLinks deleter");
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating WorkstreamInstancesNavTilesLinks deleter",e);
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
