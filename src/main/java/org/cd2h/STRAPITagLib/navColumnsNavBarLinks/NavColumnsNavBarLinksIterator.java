package org.cd2h.STRAPITagLib.navColumnsNavBarLinks;


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
import org.cd2h.STRAPITagLib.navBars.NavBars;
import org.cd2h.STRAPITagLib.navColumns.NavColumns;

@SuppressWarnings("serial")
public class NavColumnsNavBarLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int navColumnId = 0;
    int navBarId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(NavColumnsNavBarLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useNavBars = false;
   boolean useNavColumns = false;

	public static String navColumnsNavBarLinksCountByNavBars(String ID) throws JspTagException {
		int count = 0;
		NavColumnsNavBarLinksIterator theIterator = new NavColumnsNavBarLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.nav_columns_nav_bar_links where 1=1"
						+ " and nav_bar_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NavColumnsNavBarLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NavColumnsNavBarLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean navBarsHasNavColumnsNavBarLinks(String ID) throws JspTagException {
		return ! navColumnsNavBarLinksCountByNavBars(ID).equals("0");
	}

	public static String navColumnsNavBarLinksCountByNavColumns(String ID) throws JspTagException {
		int count = 0;
		NavColumnsNavBarLinksIterator theIterator = new NavColumnsNavBarLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.nav_columns_nav_bar_links where 1=1"
						+ " and nav_column_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NavColumnsNavBarLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NavColumnsNavBarLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean navColumnsHasNavColumnsNavBarLinks(String ID) throws JspTagException {
		return ! navColumnsNavBarLinksCountByNavColumns(ID).equals("0");
	}

	public static Boolean navColumnsNavBarLinksExists (String ID) throws JspTagException {
		int count = 0;
		NavColumnsNavBarLinksIterator theIterator = new NavColumnsNavBarLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.nav_columns_nav_bar_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NavColumnsNavBarLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NavColumnsNavBarLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean navBarsNavColumnsExists (String ID) throws JspTagException {
		int count = 0;
		NavColumnsNavBarLinksIterator theIterator = new NavColumnsNavBarLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.nav_columns_nav_bar_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NavColumnsNavBarLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NavColumnsNavBarLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		NavBars theNavBars = (NavBars)findAncestorWithClass(this, NavBars.class);
		if (theNavBars!= null)
			parentEntities.addElement(theNavBars);
		NavColumns theNavColumns = (NavColumns)findAncestorWithClass(this, NavColumns.class);
		if (theNavColumns!= null)
			parentEntities.addElement(theNavColumns);

		if (theNavBars == null) {
		} else {
			navBarId = theNavBars.getID();
		}
		if (theNavColumns == null) {
		} else {
			navColumnId = theNavColumns.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (navBarId == 0 ? "" : " and nav_bar_id = ?")
                                                        + (navColumnId == 0 ? "" : " and nav_column_id = ?")
                                                        + generateLimitCriteria());
            if (navBarId != 0) stat.setInt(webapp_keySeq++, navBarId);
            if (navColumnId != 0) stat.setInt(webapp_keySeq++, navColumnId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.nav_columns_nav_bar_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (navBarId == 0 ? "" : " and nav_bar_id = ?")
                                                        + (navColumnId == 0 ? "" : " and nav_column_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (navBarId != 0) stat.setInt(webapp_keySeq++, navBarId);
            if (navColumnId != 0) stat.setInt(webapp_keySeq++, navColumnId);
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
            log.error("JDBC error generating NavColumnsNavBarLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating NavColumnsNavBarLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating NavColumnsNavBarLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.nav_columns_nav_bar_links");
       if (useNavBars)
          theBuffer.append(", strapi.nav_bars");
       if (useNavColumns)
          theBuffer.append(", strapi.nav_columns");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useNavBars)
          theBuffer.append(" and strapi.nav_bars.id = strapi.nav_columns_nav_bar_links.nav_bar_id");
       if (useNavColumns)
          theBuffer.append(" and strapi.nav_columns.id = strapi.nav_columns_nav_bar_links.nav_column_id");

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
            log.error("JDBC error iterating across NavColumnsNavBarLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across NavColumnsNavBarLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across NavColumnsNavBarLinks",e);
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
            log.error("JDBC error ending NavColumnsNavBarLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending NavColumnsNavBarLinks iterator",e);
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


   public boolean getUseNavBars() {
        return useNavBars;
    }

    public void setUseNavBars(boolean useNavBars) {
        this.useNavBars = useNavBars;
    }

   public boolean getUseNavColumns() {
        return useNavColumns;
    }

    public void setUseNavColumns(boolean useNavColumns) {
        this.useNavColumns = useNavColumns;
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
