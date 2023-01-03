<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
        <c:forEach var="list" items="${list}" varStatus="status">
            
                <td>${list.tClass}</td>
                <td>${list.tPrice}</td>
                <br/>
            
        </c:forEach>