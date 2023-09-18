package com.skilldistillery.playlist.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.playlist.entities.Song;

@Service
@Transactional
public class PlaylistDaoImpl implements PlaylistDao {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Song findById(int songId) {
		return em.find(Song.class, songId);
	}

	@Override
	public List<Song> findAll() {
		String jpql = "Select p FROM Song p";
		return em.createQuery(jpql, Song.class).getResultList();
	}

	@Override
	public Song create(Song newSong) {

		//em.getTransaction().begin();

		em.persist(newSong);

		//em.getTransaction().commit();
		return newSong;
	}

	@Override
	public Song update(Song updateSong) {
		Song dbSong = em.find(Song.class, updateSong.getId());

		if (dbSong != null) {
			//em.getTransaction().begin();
			dbSong.setTitle(updateSong.getTitle());
			dbSong.setArtist(updateSong.getArtist());
			dbSong.setGenre(updateSong.getGenre());
			dbSong.setImageUrl(updateSong.getImageUrl());
			dbSong.setDescription(updateSong.getDescription());
			//em.getTransaction().commit();
		}

		return dbSong;
	}

	@Override
	public boolean deleteById(int songId) {
		Song dbsong = em.find(Song.class, songId);
		boolean bool = false;

		Song dbSong = em.find(Song.class, songId);
		if (dbSong != null) {
		em.remove(dbSong);
		bool = !em.contains(dbSong);
		}

		return bool;
	}
	
	

}
