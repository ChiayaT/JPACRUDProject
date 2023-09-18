<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create new Song</title>
</head>
<body>
	<form action="createSong.do" method="get">
		<h3>Create film</h3>
		<br>

		Title:
		<input type="text" name="title" required="required field"><br>
		Artist:
		<input type="text" name="artist" required="required field"><br>
		Cover Image Url:
		<input type="text" name="image_url" value=""><br>
		Genre:
		<input type="text" name="genre" value=""><br>
		Description:
		<input type="text" name="description" value=""><br>
		<button type="submit" value="newSong">Create film</button>
	</form>
<br>
<a href="home.do">Go Back To Home</a>
    
    
</body>
</html>