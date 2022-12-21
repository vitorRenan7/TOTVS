package tabuleiro;

import java.util.Random;

public class Ataque {
    Random random = new Random();

    public int ataquePersonagem(Personagem personagem, Orc orc){
        int ataquePersonagem = d20() + personagem.getPrecisaoArma();

        System.out.println(ataquePersonagem);

//        if(ataquePersonagem >= orc.defesaMaxOrc()){
//            System.out.printf("O jogador atacou com a espada!"
//            "");
//        }

        return ataquePersonagem;
    }

    public int calcularPrecisaoPersonagem(Personagem personagem) {
        int ataquePersonagem = d20() + personagem.getPrecisaoArma();
        System.out.printf("%d + %d ", d20(), personagem.getPrecisaoArma());
        return ataquePersonagem;
    }

    public int d20(){
        int d20 = random.nextInt(0, 20) + 1;
        return d20;
    }
}
