package com.inti.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.inti.entities.Departement;
import com.inti.service.interfaces.IDepartementService;

@Controller
public class DepartementController {
	
	@Autowired
	IDepartementService departementService;

	@RequestMapping(value = "/departements")
	public ModelAndView findAllDepartement() {
		ModelAndView model = new ModelAndView("departement"); // Utilise la page departement.jsp
		List<Departement> listDepartement = departementService.findAll(Departement.class);
		model.addObject("listDepartement", listDepartement); // Liste des département
		model.addObject("departement", new Departement()); // Rafrachit le formulaire (nouvelle instance)
		return model;
	}
	
	@RequestMapping(value = "/saveDepartement", method = RequestMethod.POST)
	public ModelAndView saveDepartement(@ModelAttribute("departement") Departement departement) {
		departementService.save(departement);
		return new ModelAndView("redirect:/departements");

	}
}
