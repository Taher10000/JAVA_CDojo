package com.codingdojo.savetravels.dojosandninjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.savetravels.dojosandninjas.models.Ninja;
import com.codingdojo.savetravels.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	private NinjaRepository ninjaRepo;
	

	public Ninja save(Ninja n) {
		return ninjaRepo.save(n);
	}


	public List<Ninja> getAll() {
		return ninjaRepo.findAll();
	}
	

	public Ninja getOne(Long id) {
		return ninjaRepo.findById(id).orElse(null);
	}

	
	public void delete(Long id) {
		ninjaRepo.deleteById(id);
	}
}
