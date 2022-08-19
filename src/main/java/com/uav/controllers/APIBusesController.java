/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uav.controllers;

import com.uav.pojo.Buses;
import com.uav.pojo.Routebuses;
import com.uav.service.BusesService;
import com.uav.service.RouteBusesService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author admin
 */
@RestController
@RequestMapping("/api")
public class APIBusesController {
    @Autowired
    private BusesService busesService;
    
    @Autowired
    private RouteBusesService routebusesService;
    
    @GetMapping("/buses")
    public ResponseEntity<List<Buses>> list() {
        return new ResponseEntity<>(this.busesService.getBuses(null, 0), HttpStatus.OK);
    }
    
    @DeleteMapping("/buses/{bid}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "bid") int id) {
        this.busesService.deleteBuses(id);
    }
    
    
    @GetMapping("/routebuses")
    public ResponseEntity<List<Routebuses>> list2() {
        return new ResponseEntity<>(this.routebusesService.getRouteBuses(null, 0), HttpStatus.OK);
    }
    
}
