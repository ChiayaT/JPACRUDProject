<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song</title>
</head>
<h1>${song.title }</h1>
<body>
<img alt="The image of this song cannot be displayed (because this is a local host linking to a web source)" src="Users/chiayathach/Downloads/${song.imageUrl}" width="100" height="100">
<br>
<br>
<Strong>${song.artist }</Strong>

<br>
<br>
Delete Song?
<a href="/deleteSong.do?songId=${song.id}"><button
						style="background-color: red; border-coler: black; color: white">
						Delete ${song.title }</button></a>
<br>
Update Song?
<a href="/gotoupdate.do?songId=${song.id }"><button
						style="background-color: blue; border-coler: black; color: white">
						Update ${song.title }</button></a>
						<br>
<a href="home.do">Go Back To Home</a>

</body>
</html>