package org.cd2h.STRAPITagLib.institutionalEssentialsNavTilesLinks;


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
import org.cd2h.STRAPITagLib.institutionalEssentials.InstitutionalEssentials;
import org.cd2h.STRAPITagLib.navTiles.NavTiles;

@SuppressWarnings("serial")
public class InstitutionalEssentialsNavTilesLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int institutionalEssentialId = 0;
    int navTileId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(InstitutionalEssentialsNavTilesLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useInstitutionalEssentials = false;
   boolean useNavTiles = false;

	public static String institutionalEssentialsNavTilesLinksCountByInstitutionalEssentials(String ID) throws JspTagException {
		int count = 0;
		InstitutionalEssentialsNavTilesLinksIterator theIterator = new InstitutionalEssentialsNavTilesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.institutional_essentials_nav_tiles_links where 1=1"
						+ " and institutional_essential_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating InstitutionalEssentialsNavTilesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating InstitutionalEssentialsNavTilesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean institutionalEssentialsHasInstitutionalEssentialsNavTilesLinks(String ID) throws JspTagException {
		return ! institutionalEssentialsNavTilesLinksCountByInstitutionalEssentials(ID).equals("0");
	}

	public static String institutionalEssentialsNavTilesLinksCountByNavTiles(String ID) throws JspTagException {
		int count = 0;
		InstitutionalEssentialsNavTilesLinksIterator theIterator = new InstitutionalEssentialsNavTilesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.institutional_essentials_nav_tiles_links where 1=1"
						+ " and nav_tile_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating InstitutionalEssentialsNavTilesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating InstitutionalEssentialsNavTilesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean navTilesHasInstitutionalEssentialsNavTilesLinks(String ID) throws JspTagException {
		return ! institutionalEssentialsNavTilesLinksCountByNavTiles(ID).equals("0");
	}

	public static Boolean institutionalEssentialsNavTilesLinksExists (String ID) throws JspTagException {
		int count = 0;
		InstitutionalEssentialsNavTilesLinksIterator theIterator = new InstitutionalEssentialsNavTilesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.institutional_essentials_nav_tiles_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating InstitutionalEssentialsNavTilesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating InstitutionalEssentialsNavTilesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean institutionalEssentialsNavTilesExists (String ID) throws JspTagException {
		int count = 0;
		InstitutionalEssentialsNavTilesLinksIterator theIterator = new InstitutionalEssentialsNavTilesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.institutional_essentials_nav_tiles_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating InstitutionalEssentialsNavTilesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating InstitutionalEssentialsNavTilesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		InstitutionalEssentials theInstitutionalEssentials = (InstitutionalEssentials)findAncestorWithClass(this, InstitutionalEssentials.class);
		if (theInstitutionalEssentials!= null)
			parentEntities.addElement(theInstitutionalEssentials);
		NavTiles theNavTiles = (NavTiles)findAncestorWithClass(this, NavTiles.class);
		if (theNavTiles!= null)
			parentEntities.addElement(theNavTiles);

		if (theInstitutionalEssentials == null) {
		} else {
			institutionalEssentialId = theInstitutionalEssentials.getID();
		}
		if (theNavTiles == null) {
		} else {
			navTileId = theNavTiles.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (institutionalEssentialId == 0 ? "" : " and institutional_essential_id = ?")
                                                        + (navTileId == 0 ? "" : " and nav_tile_id = ?")
                                                        + generateLimitCriteria());
            if (institutionalEssentialId != 0) stat.setInt(webapp_keySeq++, institutionalEssentialId);
            if (navTileId != 0) stat.setInt(webapp_keySeq++, navTileId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.institutional_essentials_nav_tiles_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (institutionalEssentialId == 0 ? "" : " and institutional_essential_id = ?")
                                                        + (navTileId == 0 ? "" : " and nav_tile_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (institutionalEssentialId != 0) stat.setInt(webapp_keySeq++, institutionalEssentialId);
            if (navTileId != 0) stat.setInt(webapp_keySeq++, navTileId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null)
                    pageContext.setAttribute(var, this);
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating InstitutionalEssentialsNavTilesLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating InstitutionalEssentialsNavTilesLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating InstitutionalEssentialsNavTilesLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.institutional_essentials_nav_tiles_links");
       if (useInstitutionalEssentials)
          theBuffer.append(", strapi.institutional_essentials");
       if (useNavTiles)
          theBuffer.append(", strapi.nav_tiles");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useInstitutionalEssentials)
          theBuffer.append(" and strapi.institutional_essentials.id = strapi.institutional_essentials_nav_tiles_links.institutional_essential_id");
       if (useNavTiles)
          theBuffer.append(" and strapi.nav_tiles.id = strapi.institutional_essentials_nav_tiles_links.nav_tile_id");

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
            log.error("JDBC error iterating across InstitutionalEssentialsNavTilesLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across InstitutionalEssentialsNavTilesLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across InstitutionalEssentialsNavTilesLinks",e);
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
            log.error("JDBC error ending InstitutionalEssentialsNavTilesLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending InstitutionalEssentialsNavTilesLinks iterator",e);
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


   public boolean getUseInstitutionalEssentials() {
        return useInstitutionalEssentials;
    }

    public void setUseInstitutionalEssentials(boolean useInstitutionalEssentials) {
        this.useInstitutionalEssentials = useInstitutionalEssentials;
    }

   public boolean getUseNavTiles() {
        return useNavTiles;
    }

    public void setUseNavTiles(boolean useNavTiles) {
        this.useNavTiles = useNavTiles;
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
