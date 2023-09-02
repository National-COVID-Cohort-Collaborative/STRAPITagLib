package org.cd2h.STRAPITagLib.navItemsNavColumnLinks;


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
import org.cd2h.STRAPITagLib.navColumns.NavColumns;
import org.cd2h.STRAPITagLib.navItems.NavItems;

@SuppressWarnings("serial")
public class NavItemsNavColumnLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int navItemId = 0;
    int navColumnId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(NavItemsNavColumnLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useNavColumns = false;
   boolean useNavItems = false;

	public static String navItemsNavColumnLinksCountByNavColumns(String ID) throws JspTagException {
		int count = 0;
		NavItemsNavColumnLinksIterator theIterator = new NavItemsNavColumnLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.nav_items_nav_column_links where 1=1"
						+ " and nav_column_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NavItemsNavColumnLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NavItemsNavColumnLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean navColumnsHasNavItemsNavColumnLinks(String ID) throws JspTagException {
		return ! navItemsNavColumnLinksCountByNavColumns(ID).equals("0");
	}

	public static String navItemsNavColumnLinksCountByNavItems(String ID) throws JspTagException {
		int count = 0;
		NavItemsNavColumnLinksIterator theIterator = new NavItemsNavColumnLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.nav_items_nav_column_links where 1=1"
						+ " and nav_item_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NavItemsNavColumnLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NavItemsNavColumnLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean navItemsHasNavItemsNavColumnLinks(String ID) throws JspTagException {
		return ! navItemsNavColumnLinksCountByNavItems(ID).equals("0");
	}

	public static Boolean navItemsNavColumnLinksExists (String ID) throws JspTagException {
		int count = 0;
		NavItemsNavColumnLinksIterator theIterator = new NavItemsNavColumnLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.nav_items_nav_column_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NavItemsNavColumnLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NavItemsNavColumnLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean navColumnsNavItemsExists (String ID) throws JspTagException {
		int count = 0;
		NavItemsNavColumnLinksIterator theIterator = new NavItemsNavColumnLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.nav_items_nav_column_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NavItemsNavColumnLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NavItemsNavColumnLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		NavColumns theNavColumns = (NavColumns)findAncestorWithClass(this, NavColumns.class);
		if (theNavColumns!= null)
			parentEntities.addElement(theNavColumns);
		NavItems theNavItems = (NavItems)findAncestorWithClass(this, NavItems.class);
		if (theNavItems!= null)
			parentEntities.addElement(theNavItems);

		if (theNavColumns == null) {
		} else {
			navColumnId = theNavColumns.getID();
		}
		if (theNavItems == null) {
		} else {
			navItemId = theNavItems.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (navColumnId == 0 ? "" : " and nav_column_id = ?")
                                                        + (navItemId == 0 ? "" : " and nav_item_id = ?")
                                                        + generateLimitCriteria());
            if (navColumnId != 0) stat.setInt(webapp_keySeq++, navColumnId);
            if (navItemId != 0) stat.setInt(webapp_keySeq++, navItemId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.nav_items_nav_column_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (navColumnId == 0 ? "" : " and nav_column_id = ?")
                                                        + (navItemId == 0 ? "" : " and nav_item_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (navColumnId != 0) stat.setInt(webapp_keySeq++, navColumnId);
            if (navItemId != 0) stat.setInt(webapp_keySeq++, navItemId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null) {
                    pageContext.setAttribute(var, this);
                    pageContext.setAttribute(var+"Count", ++rsCount);
                }
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating NavItemsNavColumnLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating NavItemsNavColumnLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating NavItemsNavColumnLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.nav_items_nav_column_links");
       if (useNavColumns)
          theBuffer.append(", strapi.nav_columns");
       if (useNavItems)
          theBuffer.append(", strapi.nav_items");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useNavColumns)
          theBuffer.append(" and strapi.nav_columns.id = strapi.nav_items_nav_column_links.nav_column_id");
       if (useNavItems)
          theBuffer.append(" and strapi.nav_items.id = strapi.nav_items_nav_column_links.nav_item_id");

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
                pageContext.setAttribute(var+"Count", ++rsCount);
                return EVAL_BODY_AGAIN;
            }
        } catch (SQLException e) {
            log.error("JDBC error iterating across NavItemsNavColumnLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across NavItemsNavColumnLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across NavItemsNavColumnLinks",e);
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
            log.error("JDBC error ending NavItemsNavColumnLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending NavItemsNavColumnLinks iterator",e);
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


   public boolean getUseNavColumns() {
        return useNavColumns;
    }

    public void setUseNavColumns(boolean useNavColumns) {
        this.useNavColumns = useNavColumns;
    }

   public boolean getUseNavItems() {
        return useNavItems;
    }

    public void setUseNavItems(boolean useNavItems) {
        this.useNavItems = useNavItems;
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
