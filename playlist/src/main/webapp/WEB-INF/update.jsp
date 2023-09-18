<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Song</title>
</head>
<body>
	<form action="updateSong.do" method="get">
		<h3>Update ${song.title }</h3>
		<br>

		Title:
		<input type="text" name="title" value="${song.title }" required="required field"><br>
		Artist:
		<input type="text" name="artist" value="${song.artist }"required="required field"><br>
		Cover Image Url:
		<input type="text" name="image_url" value="${song.imageUrl }"><br>
		Genre:
		<input type="text" name="genre" value="${song.genre }"><br>
		Description:
		<input type="text" name="description" value="${song.description }"><br>
		<button type="submit" value="updateSong">Update film</button>
		<input type="hidden" name="id" value="${song.id }">
	</form>
<br>
<a href="home.do">Go Back To Home</a>
    
    
</body>
</html>