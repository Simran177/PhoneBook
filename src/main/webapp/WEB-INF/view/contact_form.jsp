<%-- 
    Document   : contact_form
    Created on : 11 Apr, 2021, 3:54:35 PM
    Author     : Unnati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--to add a url we use taglib --%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Form - Contact Application</title>
        <s:url var="url_css" value="/static/css/style.css" />
        <link href="${url_css}" rel="stylesheet" type="text/css" />
    </head>
    <%--<s:url var="url_bg" value="/static/images/bg-1.jpg"/>--%>
    <!--<body background="${url_bg}">-->
    <body>
        <table border="1" width="80%" align="center">
            <tr>
                <td height="80px">
                    <%-- Header --%>
                    <!--<h1>Contact Application</h1>-->
                    <jsp:include page="include/header.jsp" />
                </td>
                </tr>
                <tr>
                <td height="25px">
                    <%-- Menu --%>
                    <jsp:include page="include/menu.jsp" />
                </td>
                </tr>
                <tr>
                <td height="350px">
                    <%-- Page Content Area --%>
                    <h1>Contact Form</h1>
                    <c:if test="${err!=null}">
                    <p class="error">${err}</p>
                    </c:if>
                    
                    <c:if test="${param.act eq 'lo'}">
                    <p class="success">Logout Successfully! Thanks for using contact application</p>
                    </c:if>
                    <s:url var="url_csave" value="/user/save_contact" />
                    <f:form action="${url_csave}" modelAttribute="command">
                        <table border="1">
                            <tr>
                                <td>Name</td>
                                <td><f:input path="name" /> </td>
                            </tr>
                            
                            <tr>
                                <td>Phone</td>
                                <td><f:input path="phone" /> </td>
                            </tr>
                            
                            <tr>
                                <td>Email</td>
                                <td><f:input path="email" /> </td>
                            </tr>
                            
                            <tr>
                                <td>Address</td>
                                <td><f:textarea path="address" /> </td>
                            </tr>
                            
                             <tr>
                                <td>Remark</td>
                                <td><f:textarea path="remark" /> </td>
                            </tr>
                            
                           
                            <tr> 
                                <td colspan="2" align="right">
                                    <button>Save</button>
                                </td>
                            </tr>
                        </table>
                        
                    </f:form>
                </td>
                </tr>
                <tr>
                <td height="25px">
                    <%-- Footer --%>
                     <jsp:include page="include/footer.jsp" />
                </td>
            </tr>
        </table>
    </body>
</html>
