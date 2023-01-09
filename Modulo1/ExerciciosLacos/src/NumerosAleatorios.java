import java.util.Random;
import java.util.Scanner;

public class NumerosAleatorios {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);
        Random random = new Random();

        System.out.println("Digite um número maior que 0: \n");
        Integer numero = texto.nextInt();


        if(numero < 1){
            System.out.printf("Informação inválida!");
            return;
        }

        System.out.printf("O número recebido foi %d \n", numero);

        Integer soma = 0;
        for(int i = 0; i < numero; i++){
            int numeroAleatorio = random.nextInt(1,7);
            System.out.printf("O número sorteado foi: %d \n", numeroAleatorio);

            soma = soma + numeroAleatorio;

        }
        System.out.printf("A soma dos números aleátorios é: %d", soma);
    }
}
