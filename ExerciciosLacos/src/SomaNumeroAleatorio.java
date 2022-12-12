import java.util.Random;
import java.util.Scanner;

public class SomaNumeroAleatorio {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        Random aleatorio = new Random();

        System.out.print("Digite a quantidade de dados por sorteio: ");
        Integer dadosPorSorteio = Integer.parseInt(entrada.nextLine());

        System.out.print("Digite a quantidade total de sorteios: ");
        Integer totalSorteios = Integer.parseInt(entrada.nextLine());

        Integer somaTotal = 0;

        for (int i = 0; i < totalSorteios; i++) {
            Integer somaSorteio = 0;

            for (int j = 0; j < dadosPorSorteio; j++) {
                Integer dadoSorteado = aleatorio.nextInt(6) + 1;
                somaSorteio += dadoSorteado;
                System.out.printf("%d ", dadoSorteado);

                if (j < dadosPorSorteio - 1) {
                    System.out.print("+ ");
                }
            }

            somaTotal += somaSorteio;
            System.out.printf("= %d\n", somaSorteio);
        }

        System.out.printf("A soma total dos sorteios foi de %d!\n", somaTotal);
    }
}