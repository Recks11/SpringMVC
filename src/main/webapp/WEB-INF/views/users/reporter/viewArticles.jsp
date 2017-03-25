<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${userAccess.toUpperCase()}</title>
    <jsp:include page="../../admin/adminFragments/imports-admin.jsp"/>
</head>
<body>
<jsp:include page="../../fragments/userFragments/navbar-user.jsp"/>
<div id="wrapper">
    <div class="container custom-width">
        <div class="row">
            <div class="col-lg-12">

                <div class="panel panel-default">
                    <div class="panel-heading">Advanced Table</div>
                    <div class="panel-body">
                        <table data-toggle="table" data-url="<c:url value="/Reporter/responseBody"/>"  data-show-refresh="true"
                               data-show-toggle="true" data-show-columns="true" data-search="true"
                               data-select-item-name="toolbar1" data-pagination="true" data-sort-name="date" data-sort-order="desc">
                            <thead>
                            <tr>
                                <th data-field="state" data-checkbox="true" >ID</th>
                                <th data-field="id" data-sortable="true">Id</th>
                                <th data-field="date" data-sortable="true">Date</th>
                                <th data-field="headline"  data-sortable="true">Headline</th>
                                <th data-field="owner.username" data-formatter="IdFormatter" data-sortable="true">Publisher</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
            <script>
                function IdFormatter(value, row){
                    return row.owner.username;
                }
            </script>
            </div>
        </div>
    </div>
</body>
</html>
