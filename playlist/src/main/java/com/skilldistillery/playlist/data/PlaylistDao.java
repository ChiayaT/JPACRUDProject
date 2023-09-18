package com.skilldistillery.playlist.data;

import java.util.List;

import com.skilldistillery.playlist.entities.Song;

public interface PlaylistDao {
	Song findById(int songId);
	List<Song> findAll();
	Song create(Song newSong);
	Song update(Song updateSong);
	boolean deleteById(int songId);
	
}
