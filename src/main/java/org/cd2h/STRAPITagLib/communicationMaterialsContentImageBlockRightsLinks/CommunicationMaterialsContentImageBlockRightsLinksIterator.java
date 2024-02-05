package org.cd2h.STRAPITagLib.communicationMaterialsContentImageBlockRightsLinks;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.STRAPITagLibBodyTagSupport;
import org.cd2h.STRAPITagLib.communicationMaterials.CommunicationMaterials;
import org.cd2h.STRAPITagLib.contentImageBlockRights.ContentImageBlockRights;

@SuppressWarnings("serial")
public class CommunicationMaterialsContentImageBlockRightsLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int communicationMaterialId = 0;
    int contentImageBlockRightId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(CommunicationMaterialsContentImageBlockRightsLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useCommunicationMaterials = false;
   boolean useContentImageBlockRights = false;

	public static String communicationMaterialsContentImageBlockRightsLinksCountByCommunicationMaterials(String ID) throws JspTagException {
		int count = 0;
		CommunicationMaterialsContentImageBlockRightsLinksIterator theIterator = new CommunicationMaterialsContentImageBlockRightsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.communication_materials_content_image_block_rights_links where 1=1"
						+ " and communication_material_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean communicationMaterialsHasCommunicationMaterialsContentImageBlockRightsLinks(String ID) throws JspTagException {
		return ! communicationMaterialsContentImageBlockRightsLinksCountByCommunicationMaterials(ID).equals("0");
	}

	public static String communicationMaterialsContentImageBlockRightsLinksCountByContentImageBlockRights(String ID) throws JspTagException {
		int count = 0;
		CommunicationMaterialsContentImageBlockRightsLinksIterator theIterator = new CommunicationMaterialsContentImageBlockRightsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.communication_materials_content_image_block_rights_links where 1=1"
						+ " and content_image_block_right_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean contentImageBlockRightsHasCommunicationMaterialsContentImageBlockRightsLinks(String ID) throws JspTagException {
		return ! communicationMaterialsContentImageBlockRightsLinksCountByContentImageBlockRights(ID).equals("0");
	}

	public static Boolean communicationMaterialsContentImageBlockRightsLinksExists (String ID) throws JspTagException {
		int count = 0;
		CommunicationMaterialsContentImageBlockRightsLinksIterator theIterator = new CommunicationMaterialsContentImageBlockRightsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.communication_materials_content_image_block_rights_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean communicationMaterialsContentImageBlockRightsExists (String ID) throws JspTagException {
		int count = 0;
		CommunicationMaterialsContentImageBlockRightsLinksIterator theIterator = new CommunicationMaterialsContentImageBlockRightsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.communication_materials_content_image_block_rights_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		CommunicationMaterials theCommunicationMaterials = (CommunicationMaterials)findAncestorWithClass(this, CommunicationMaterials.class);
		if (theCommunicationMaterials!= null)
			parentEntities.addElement(theCommunicationMaterials);
		ContentImageBlockRights theContentImageBlockRights = (ContentImageBlockRights)findAncestorWithClass(this, ContentImageBlockRights.class);
		if (theContentImageBlockRights!= null)
			parentEntities.addElement(theContentImageBlockRights);

		if (theCommunicationMaterials == null) {
		} else {
			communicationMaterialId = theCommunicationMaterials.getID();
		}
		if (theContentImageBlockRights == null) {
		} else {
			contentImageBlockRightId = theContentImageBlockRights.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (communicationMaterialId == 0 ? "" : " and communication_material_id = ?")
                                                        + (contentImageBlockRightId == 0 ? "" : " and content_image_block_right_id = ?")
                                                        + generateLimitCriteria());
            if (communicationMaterialId != 0) stat.setInt(webapp_keySeq++, communicationMaterialId);
            if (contentImageBlockRightId != 0) stat.setInt(webapp_keySeq++, contentImageBlockRightId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.communication_materials_content_image_block_rights_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (communicationMaterialId == 0 ? "" : " and communication_material_id = ?")
                                                        + (contentImageBlockRightId == 0 ? "" : " and content_image_block_right_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (communicationMaterialId != 0) stat.setInt(webapp_keySeq++, communicationMaterialId);
            if (contentImageBlockRightId != 0) stat.setInt(webapp_keySeq++, contentImageBlockRightId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null)
                    pageContext.setAttribute(var, this);
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating CommunicationMaterialsContentImageBlockRightsLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.communication_materials_content_image_block_rights_links");
       if (useCommunicationMaterials)
          theBuffer.append(", strapi.communication_materials");
       if (useContentImageBlockRights)
          theBuffer.append(", strapi.content_image_block_rights");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useCommunicationMaterials)
          theBuffer.append(" and strapi.communication_materials.id = strapi.communication_materials_content_image_block_rights_links.communication_material_id");
       if (useContentImageBlockRights)
          theBuffer.append(" and strapi.content_image_block_rights.id = strapi.communication_materials_content_image_block_rights_links.content_image_block_right_id");

      return theBuffer.toString();
    }

    private String generateFilterCriteria() {
        if (filterCriteria != null) {
            return " and " + filterCriteria;
        } else {
            return "";
        }
    }

    private String generateSortCriteria() {
        if (sortCriteria != null) {
            return sortCriteria;
        } else {
            return "id";
        }
    }

    private String generateLimitCriteria() {
        if (limitCriteria > 0) {
            return " limit " + limitCriteria;
        } else {
            return "";
        }
    }

    public int doAfterBody() throws JspException {
        try {
            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                return EVAL_BODY_AGAIN;
            }
        } catch (SQLException e) {
            log.error("JDBC error iterating across CommunicationMaterialsContentImageBlockRightsLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across CommunicationMaterialsContentImageBlockRightsLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across CommunicationMaterialsContentImageBlockRightsLinks",e);
			}

        }
        return SKIP_BODY;
    }

    public int doEndTag() throws JspTagException, JspException {
        try {
			if( var != null )
				pageContext.removeAttribute(var);
			if( pageContext != null ){
				Boolean error = (Boolean) pageContext.getAttribute("tagError");
				if( error != null && error ){

					freeConnection();
					clearServiceState();

					Exception e = null; // (Exception) pageContext.getAttribute("tagErrorException");
					String message = null; // (String) pageContext.getAttribute("tagErrorMessage");

					if(pageContext != null){
						e = (Exception) pageContext.getAttribute("tagErrorException");
						message = (String) pageContext.getAttribute("tagErrorMessage");

					}
					Tag parent = getParent();
					if(parent != null){
						return parent.doEndTag();
					}else if(e != null && message != null){
						throw new JspException(message,e);
					}else if(parent == null && pageContext != null){
						pageContext.removeAttribute("tagError");
						pageContext.removeAttribute("tagErrorException");
						pageContext.removeAttribute("tagErrorMessage");
					}
				}
			}

            if( rs != null ){
                rs.close();
            }

            if( stat != null ){
                stat.close();
            }

        } catch ( SQLException e ) {
            log.error("JDBC error ending CommunicationMaterialsContentImageBlockRightsLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending CommunicationMaterialsContentImageBlockRightsLinks iterator",e);
			}

        } finally {
            clearServiceState();
            freeConnection();
        }
        return super.doEndTag();
    }

    private void clearServiceState() {
        ID = 0;
        parentEntities = new Vector<STRAPITagLibTagSupport>();

        this.rs = null;
        this.stat = null;
        this.sortCriteria = null;
        this.var = null;
        this.rsCount = 0;
    }

    public String getFromList() {
        return fromList;
    }

    public void setFromList(String fromList) {
        this.fromList = fromList;
    }

    public String getJoinCriteria() {
        return joinCriteria;
    }

    public void setJoinCriteria(String joinCriteria) {
        this.joinCriteria = joinCriteria;
    }

    public String getFilterCriteria() {
        return filterCriteria;
    }

    public void setFilterCriteria(String filterCriteria) {
        this.filterCriteria = filterCriteria;
    }

    public String getSortCriteria() {
        return sortCriteria;
    }

    public void setSortCriteria(String sortCriteria) {
        this.sortCriteria = sortCriteria;
    }

    public int getLimitCriteria() {
        return limitCriteria;
    }

    public void setLimitCriteria(int limitCriteria) {
        this.limitCriteria = limitCriteria;
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
    }

    public Boolean isFirst() throws SQLException {
        return rs.isFirst();
    }

    public Boolean isLast() throws SQLException {
        return rs.isLast();
    }


   public boolean getUseCommunicationMaterials() {
        return useCommunicationMaterials;
    }

    public void setUseCommunicationMaterials(boolean useCommunicationMaterials) {
        this.useCommunicationMaterials = useCommunicationMaterials;
    }

   public boolean getUseContentImageBlockRights() {
        return useContentImageBlockRights;
    }

    public void setUseContentImageBlockRights(boolean useContentImageBlockRights) {
        this.useContentImageBlockRights = useContentImageBlockRights;
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
