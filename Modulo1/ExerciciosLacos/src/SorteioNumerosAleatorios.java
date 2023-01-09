import java.util.Random;
import java.util.Scanner;

public class SorteioNumerosAleatorios {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);
        Random random = new Random();

        System.out.println("Digite um número de 1 a 6: \n");
        Integer numero = texto.nextInt();

        if(numero < 1 || numero > 6){
            System.out.printf("Você digitou uma informação inválida!");
            return;
        }

        for(int i = 0; i < numero; i++){
            int numeroAleatorio = random.nextInt(1,7);
            System.out.printf("O número sorteado foi: %d \n", numeroAleatorio);

        }
    }
}
