import java.util.Random;
import java.util.Scanner;

public class SorteioNumeroAleatorio {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        Random aleatorio = new Random();

        Integer numeroSorteado = 0;
        Integer tentativa = 0;

        System.out.print("Informe um número entre 1 e 6: ");
        Integer numeroPedido = entrada.nextInt();

        if (numeroPedido < 1 || numeroPedido > 6) {
            System.out.printf("O número precisa estar entre 1 e 6, mas foi informado %d\n", numeroPedido);
            return;
        }

        System.out.printf("O número informado foi %d\n", numeroPedido);

        while (true) {
            numeroSorteado = aleatorio.nextInt(6) + 1;
            tentativa++;

            System.out.printf("Foi sorteado o número %d\n", numeroSorteado);

            if (numeroSorteado == numeroPedido) {
                System.out.printf("Foram necessários %d sorteios para que o número %d fosse sorteado\n", tentativa, numeroSorteado);
                break;
            }
        }
    }

}