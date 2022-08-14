package com.codingdojo.savetravels.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.savetravels.dojosandninjas.models.Dojo;
import com.codingdojo.savetravels.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
private final DojoRepository dojoRepos;
	
	public DojoService(DojoRepository dojoRepos) {
		this.dojoRepos = dojoRepos;
	}
    public List<Dojo> allDojos() {
        return dojoRepos.findAll();
    }
    public Dojo createDojo(Dojo d) {
        return dojoRepos.save(d);
    }
    public Dojo findDojo(Long id) {
        Optional<Dojo> optionalDojo = dojoRepos.findById(id);
        if(optionalDojo.isPresent()) {
            return optionalDojo.get();
        } else {
            return null;
        }
    }
    
    public Dojo updateDojo(Dojo d) {
    	
    	return dojoRepos.save(d);

    }
    public void deleteDojo(Long id) {
    	dojoRepos.deleteById(id);
    }

}
