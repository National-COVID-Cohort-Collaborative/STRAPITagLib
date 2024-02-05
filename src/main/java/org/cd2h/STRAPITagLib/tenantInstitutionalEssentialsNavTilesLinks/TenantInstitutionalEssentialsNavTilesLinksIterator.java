package org.cd2h.STRAPITagLib.tenantInstitutionalEssentialsNavTilesLinks;


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
import org.cd2h.STRAPITagLib.navTiles.NavTiles;
import org.cd2h.STRAPITagLib.tenantInstitutionalEssentials.TenantInstitutionalEssentials;

@SuppressWarnings("serial")
public class TenantInstitutionalEssentialsNavTilesLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int tenantInstitutionalEssentialId = 0;
    int navTileId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(TenantInstitutionalEssentialsNavTilesLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useNavTiles = false;
   boolean useTenantInstitutionalEssentials = false;

	public static String tenantInstitutionalEssentialsNavTilesLinksCountByNavTiles(String ID) throws JspTagException {
		int count = 0;
		TenantInstitutionalEssentialsNavTilesLinksIterator theIterator = new TenantInstitutionalEssentialsNavTilesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.tenant_institutional_essentials_nav_tiles_links where 1=1"
						+ " and nav_tile_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean navTilesHasTenantInstitutionalEssentialsNavTilesLinks(String ID) throws JspTagException {
		return ! tenantInstitutionalEssentialsNavTilesLinksCountByNavTiles(ID).equals("0");
	}

	public static String tenantInstitutionalEssentialsNavTilesLinksCountByTenantInstitutionalEssentials(String ID) throws JspTagException {
		int count = 0;
		TenantInstitutionalEssentialsNavTilesLinksIterator theIterator = new TenantInstitutionalEssentialsNavTilesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.tenant_institutional_essentials_nav_tiles_links where 1=1"
						+ " and tenant_institutional_essential_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean tenantInstitutionalEssentialsHasTenantInstitutionalEssentialsNavTilesLinks(String ID) throws JspTagException {
		return ! tenantInstitutionalEssentialsNavTilesLinksCountByTenantInstitutionalEssentials(ID).equals("0");
	}

	public static Boolean tenantInstitutionalEssentialsNavTilesLinksExists (String ID) throws JspTagException {
		int count = 0;
		TenantInstitutionalEssentialsNavTilesLinksIterator theIterator = new TenantInstitutionalEssentialsNavTilesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.tenant_institutional_essentials_nav_tiles_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean navTilesTenantInstitutionalEssentialsExists (String ID) throws JspTagException {
		int count = 0;
		TenantInstitutionalEssentialsNavTilesLinksIterator theIterator = new TenantInstitutionalEssentialsNavTilesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.tenant_institutional_essentials_nav_tiles_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		NavTiles theNavTiles = (NavTiles)findAncestorWithClass(this, NavTiles.class);
		if (theNavTiles!= null)
			parentEntities.addElement(theNavTiles);
		TenantInstitutionalEssentials theTenantInstitutionalEssentials = (TenantInstitutionalEssentials)findAncestorWithClass(this, TenantInstitutionalEssentials.class);
		if (theTenantInstitutionalEssentials!= null)
			parentEntities.addElement(theTenantInstitutionalEssentials);

		if (theNavTiles == null) {
		} else {
			navTileId = theNavTiles.getID();
		}
		if (theTenantInstitutionalEssentials == null) {
		} else {
			tenantInstitutionalEssentialId = theTenantInstitutionalEssentials.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (navTileId == 0 ? "" : " and nav_tile_id = ?")
                                                        + (tenantInstitutionalEssentialId == 0 ? "" : " and tenant_institutional_essential_id = ?")
                                                        + generateLimitCriteria());
            if (navTileId != 0) stat.setInt(webapp_keySeq++, navTileId);
            if (tenantInstitutionalEssentialId != 0) stat.setInt(webapp_keySeq++, tenantInstitutionalEssentialId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.tenant_institutional_essentials_nav_tiles_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (navTileId == 0 ? "" : " and nav_tile_id = ?")
                                                        + (tenantInstitutionalEssentialId == 0 ? "" : " and tenant_institutional_essential_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (navTileId != 0) stat.setInt(webapp_keySeq++, navTileId);
            if (tenantInstitutionalEssentialId != 0) stat.setInt(webapp_keySeq++, tenantInstitutionalEssentialId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null)
                    pageContext.setAttribute(var, this);
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating TenantInstitutionalEssentialsNavTilesLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.tenant_institutional_essentials_nav_tiles_links");
       if (useNavTiles)
          theBuffer.append(", strapi.nav_tiles");
       if (useTenantInstitutionalEssentials)
          theBuffer.append(", strapi.tenant_institutional_essentials");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useNavTiles)
          theBuffer.append(" and strapi.nav_tiles.id = strapi.tenant_institutional_essentials_nav_tiles_links.nav_tile_id");
       if (useTenantInstitutionalEssentials)
          theBuffer.append(" and strapi.tenant_institutional_essentials.id = strapi.tenant_institutional_essentials_nav_tiles_links.tenant_institutional_essential_id");

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
            log.error("JDBC error iterating across TenantInstitutionalEssentialsNavTilesLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across TenantInstitutionalEssentialsNavTilesLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across TenantInstitutionalEssentialsNavTilesLinks",e);
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
            log.error("JDBC error ending TenantInstitutionalEssentialsNavTilesLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending TenantInstitutionalEssentialsNavTilesLinks iterator",e);
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


   public boolean getUseNavTiles() {
        return useNavTiles;
    }

    public void setUseNavTiles(boolean useNavTiles) {
        this.useNavTiles = useNavTiles;
    }

   public boolean getUseTenantInstitutionalEssentials() {
        return useTenantInstitutionalEssentials;
    }

    public void setUseTenantInstitutionalEssentials(boolean useTenantInstitutionalEssentials) {
        this.useTenantInstitutionalEssentials = useTenantInstitutionalEssentials;
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
