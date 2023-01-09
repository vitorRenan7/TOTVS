//Converter km em milhas
import java.util.Scanner;
public class ConverteKmEmMilhas {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        System.out.print("Digite o valor em quilômetro: \n");
        Double quilometro = texto.nextDouble();
        Double milha = quilometro / 1.609;

        System.out.printf("O valor recebido em quilômetro é %.1f\n", quilometro);
        System.out.printf("O resultado em milhas é: %f", milha);
    }
}
