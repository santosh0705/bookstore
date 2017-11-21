<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCKTYPE HTML> 
<html>
<head>
    <link rel="stylesheet" href="static/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="static/style.css" type="text/css">
    <title>Books Store | Add New Book</title>
</head>
<body>
        <div class="container">    
	<header class="bookstorealgin">
		<h1 class="bookmanagement">Books Management</h1>
        <nav>
        <p class="paraalign">	<a href="new" class="booklinkalign"><i class="fa fa-plus"></i> Add New Book</a>
        	<a href="list" class="booklinkalign"><i class="fa fa-list"></i> List All Books</a>
        </p>	
        </nav>
	</header>
    <div align="center" class="tablediv">
		<c:if test="${book != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
			<form action="insert" method="post">
        </c:if>
        <table class="bookstoretable">
            <caption class="bookstoretablecap">
            	<h2 class="bookstoreheading">
            		<c:if test="${book != null}">
            			Edit Book
            		</c:if>
            		<c:if test="${book == null}">
            			Add New Book
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${book != null}">
        			<input type="hidden" name="id" value="<c:out value='${book.id}' />" />
        		</c:if>            
            <tr>
                <th>Title: </th>
                <td>
                	<input type="text" name="title" size="45" class="inputalignment" 
                			value="<c:out value='${book.title}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Author: </th>
                <td>
                	<input type="text" name="author" size="45" class="inputalignment" 
                			value="<c:out value='${book.author}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>
                	<input type="text" class="inputalignment" name="price" size="5"
                			value="<c:out value='${book.price}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<button class="bookstoresubmit" type="submit"><i class="fa fa-save"></i> Save</button>
            	</td>
            </tr>
        </table>
        </form>
    </div>
<footer>
<p>Bookstore Management</p>
</footer>
</div>
</body>
</html>
