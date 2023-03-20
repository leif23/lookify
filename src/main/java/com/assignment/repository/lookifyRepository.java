package com.assignment.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.assignment.models.Lookify;

@Repository
public interface lookifyRepository extends CrudRepository<Lookify, Long> {

	List<Lookify> findAll();
	
	
}
