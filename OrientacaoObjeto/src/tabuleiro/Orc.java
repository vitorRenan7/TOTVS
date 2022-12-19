package tabuleiro;

import java.util.Random;

public class Orc {
    private int vidaOrc;
    private int defesaOrc;
    private int precisaoArmaOrc;
    private int danoArmaOrc;
    Random random = new Random();

    public Orc(){
        this.vidaOrc   = 8;
        this.defesaOrc = 10;
        this.precisaoArmaOrc = 0;
    }
}
