package com.assignment.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.assignment.models.Lookify;
import com.assignment.repository.lookifyRepository;

@Service 
public class lookifyService {
	
	private final lookifyRepository lookifyRepo;
	
	public lookifyService(lookifyRepository lookifyRepo) {
		
		 this.lookifyRepo = lookifyRepo;
	}
	public List<Lookify> findAllLookify() {
		return this.lookifyRepo.findAll();
	}
	
	
	public Lookify addNewSong(Lookify lookify) {
		return lookifyRepo.save(lookify);
	}
	
	
	
	
	

}
