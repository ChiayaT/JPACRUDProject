<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Playlist</title>
</head>
<body>

<h1>JPA Playlist</h1>


<div >
<h3>Current Songs</h3>
<form action="getSong.do" method="GET">
  Find Song By ID: <input type="text" name="songId" />
  <input type="submit" value="Get Song" />
</form>
<c:forEach var="song" items="${songs }"> 

<a href="/getSong.do?songId=${song.id}"><button
						style="background-color: blue; border-coler: black; color: white">
						${song.title } - ${song.artist }</button></a>
						
<br>
</c:forEach>
</div>
<a href="gotocreate.do"><button><strong>Create a song</strong></button></a>
<form>

</form>

</body>
</html>