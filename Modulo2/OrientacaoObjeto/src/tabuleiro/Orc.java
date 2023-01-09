package tabuleiro;

import java.util.Random;

public class Orc {
    private int vidaOrc;
    private int defesaOrc;
    private int precisaoArmaOrc;
    Random random = new Random();

    public Orc(){
        this.vidaOrc   = 8;
        this.defesaOrc = 10;
        this.precisaoArmaOrc = 0;
    }

    public int getVidaOrc() {
        return vidaOrc;
    }

    public void setVidaOrc(int vidaOrc) {
        this.vidaOrc = vidaOrc;
    }

    public int getDefesaOrc() {
        return defesaOrc;
    }

    public void setDefesaOrc(int defesaOrc) {
        this.defesaOrc = defesaOrc;
    }


    public int danoMachado(){
        int danoMachado = random.nextInt(0, 12) + 1;
        System.out.println("Dano ORC: " + danoMachado);
        return danoMachado;
    }
}
