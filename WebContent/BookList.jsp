<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCKTYPE HTML>
<html>
<head>
    <link rel="stylesheet" href="static/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="static/style.css" type="text/css">
    <title>Books Store | Book List</title>
</head>
<body>
      <div class="container">
	<header>
		<h1 class="bookmanagement">Books Management</h1>
        <nav>
        	<p class="paraalign"><a href="new" class="booklinkalign"><i class="fa fa-plus"></i> Add New Book</a>
        
        	<a href="list" class="booklinkalign"><i class="fa fa-list"></i> List All Books</a>
        	</p>
        </nav>
	</header>
    <div align="center" class="tablediv">
        <table class="bookstoretable">
            <caption class="bookstoretablecap"><h2 class="bookstoreheading">List of Books</h2></caption>
            <tr style="background-color: #24bff2;">
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${book.id}' />" class="iconalign" title="Edit">
                                               <i class="fa fa-pencil-square-o"  class="iconalign"
                                 aria-hidden="true"></i></a> 
                    	&nbsp;&nbsp;|&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${book.id}' />" class="iconalign" title="Delete"> 
                                  <i class="fa fa-trash" aria-hidden="true"
                                        class="iconalign"></i></a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
 <footer>
    <p>Bookstore Management</p>
    </footer>
</div>
</body>
</html>
