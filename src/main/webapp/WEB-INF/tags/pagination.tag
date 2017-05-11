<%@tag language="java" pageEncoding="ISO-8859-1"%>
<%@ tag import="org.springframework.util.StringUtils" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="pagedList" required="true"
              type="org.springframework.beans.support.PagedListHolder"%>
<%@ attribute name="pagedLink" required="true" type="java.lang.String" %>
<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 4/2/2017
  Time: 1:33 AM
  To change this template use File | Settings | File Templates.
--%>
<c:if test="${pagedList.pageCount > 1}">

    <ul class="pagination pageStyle">
        <c:if test="${!pagedList.firstPage}">
            <li class="previous">
            <a href="<%= StringUtils.replace(pagedLink,"~",String.valueOf(pagedList.getPage() - 1))%>"> < </a></li>
        </c:if>
        <c:if test="${pagedList.firstLinkedPage > 0}">
            <li><a href="<%= StringUtils.replace(pagedLink,"~","0")%>"> 1 </a></li>
        </c:if>
        <c:if test="${pagedList.firstLinkedPage > 1}">
            <li><i class="fa fa-plus"></i></li>
        </c:if>

        <c:forEach begin="${pagedList.firstLinkedPage}" end="${pagedList.lastLinkedPage}" var="page">
            <c:choose>
                <c:when test="${pagedList.page == page}">
                    <li class="active"><a href="#">${page + 1}</a></li>
                </c:when>
                <c:otherwise>
                    <li>
                        <a href="<%=StringUtils.replace(pagedLink,"~", String.valueOf(jspContext.getAttribute("page")))%>">${page + 1}</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:if test="${pagedList.lastLinkedPage < pagedList.pageCount - 2}">
            <li> <i class="fa fa-plus"></i></li>
        </c:if>
        <c:if test="${pagedList.lastLinkedPage < pagedList.pageCount - 1}">
            <li href="<%= StringUtils.replace(pagedLink,"~", String.valueOf(pagedList.getPageCount() - 1))%>">${pagedList.pageCount}</li>
        </c:if>
        <c:if test="${!pagedList.lastPage}">
            <li class="next">
                <a href="<%= StringUtils.replace(pagedLink,"~", String.valueOf(pagedList.getPage() + 1))%>"> > </a>
            </li>
        </c:if>
    </ul>


</c:if>