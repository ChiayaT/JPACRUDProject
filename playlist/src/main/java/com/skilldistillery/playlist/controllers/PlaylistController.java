package com.skilldistillery.playlist.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.playlist.data.PlaylistDao;
import com.skilldistillery.playlist.entities.Song;

@Controller
public class PlaylistController {
	
	@Autowired
	private PlaylistDao dao;

	@RequestMapping(path = {"/", "home.do"})
	public String goHome(Model model) {
		model.addAttribute("songs", dao.findAll());
		return "home";
	}
	
	@RequestMapping(path = {"getSong.do"})
	public String getSong(Model model,Integer songId) {
		model.addAttribute("song", dao.findById(songId));
		return "song";
		
	}
	
	@RequestMapping(path = {"deleteSong.do"})
	public String deleteSong(Model model,Integer songId) {
		model.addAttribute("song", dao.findById(songId));
		model.addAttribute("deleted", dao.deleteById(songId));
		return "delete";
		
	}
	
	@RequestMapping(path = {"gotocreate.do"})
	public String gotocreate() {
		return "create";
		
	}
	
	@RequestMapping(path = {"gotoupdate.do"})
	public String gotoupdate(Integer songId, Model model) {
		model.addAttribute("song", dao.findById(songId));
		return "update";
		
	}
	
	@RequestMapping(path = {"createSong.do"})
	public String createSong(Model model, Song newSong) {
		System.out.println(newSong);
		
		model.addAttribute("song", dao.create(newSong));
		return "song";
		
	}
	
	@RequestMapping(path = {"updateSong.do"})
	public String updateSong(Model model, Song updateSong){
		System.out.println(updateSong);
		System.out.println(updateSong.getId());
		model.addAttribute("song", dao.update(updateSong));
		return "song";
	}
	
}
