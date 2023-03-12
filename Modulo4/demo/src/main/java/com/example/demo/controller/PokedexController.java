package com.example.demo.controller;

import com.example.demo.Pokemon;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

    @RestController
    @RequestMapping("/pokemons")
    public class PokedexController {

        private ArrayList<Pokemon> pokemons = new ArrayList<>();

        private int ultimoId =1;

        @GetMapping
        public ArrayList<Pokemon> listar(){
            return pokemons;
        }

        @PostMapping
        public  void  cadastrar(@RequestBody Pokemon pokemon){
            pokemons.add(pokemon);

            pokemon.setId(ultimoId);
            pokemons.add(pokemon);
            ultimoId++;
        }

        @DeleteMapping
        public void remover(@PathVariable int id){
            for(Pokemon pokemon : pokemons){

            }
        }
    }

