package tabuleiro;

import java.util.Random;

public class Personagem {
    private int vidaPersonagem;
    private int defesaPersonsagem;
    private int precisaoArma;

    private int armaduraPersonagem;
    Random random = new Random();

    public Personagem() {
        this.vidaPersonagem = 10;
        this.defesaPersonsagem = 10;
        this.precisaoArma = 2;
        this.armaduraPersonagem = 4;
    }

    public int getVidaPersonagem() {
        return vidaPersonagem;
    }

    public void setVidaPersonagem(int vidaPersonagem) {
        this.vidaPersonagem = vidaPersonagem;
    }

    public int getDefesaPersonsagem() {
        return defesaPersonsagem;
    }

    public void setDefesaPersonsagem(int defesaPersonsagem) {
        this.defesaPersonsagem = defesaPersonsagem;
    }

    public int getPrecisaoArma() {
        return precisaoArma;
    }

    public void setPrecisaoArma(int precisaoArma) {
        this.precisaoArma = precisaoArma;
    }

    public int getArmaduraPersonagem() {
        return armaduraPersonagem;
    }

    public void setArmaduraPersonagem(int armaduraPersonagem) {
        this.armaduraPersonagem = armaduraPersonagem;
    }


    public int danoEspada(){
        int danoEspada = random.nextInt(0, 8) + 1;
        System.out.println("Personagem: " + danoEspada);
        return danoEspada;
    }
}
