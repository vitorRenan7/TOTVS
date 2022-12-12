//Sorteio
import java.util.Random;
import java.util.Scanner;

public class SorteioDosNumeros {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);
        Random random = new Random();

        int numeroAleatorio;
        System.out.println("Escolha um número de 1 até 6:");
        numeroAleatorio = texto.nextInt();

        if(numeroAleatorio < 1 || numeroAleatorio > 6){
            System.out.println("Informação inválida");
            return;
        }

        int numeroRandowAleatorio = random.nextInt(6);
        System.out.println("O número gerado aleatoriamente foi: " + numeroRandowAleatorio);

        if( numeroAleatorio == numeroRandowAleatorio){
            System.out.println("Parabéns, você ganhou!");
        }else{
            System.out.println("Não foi desse vez, tente novamente!");
        }


    }
}