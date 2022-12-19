package tabuleiro;

import java.util.Random;

public class Personagem {
    private int vida;
    private int defesa;
    private int precisaoArma;
    private int danoArma;
    Random random = new Random();

    public Personagem(){
        this.vida   = 10;
        this.defesa = 10;
        this.precisaoArma = 2; //Usa o dano para saber o dano da espada
    }
}
