import java.util.Scanner;
public class ConverterCelsiusFahrenhheit {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        System.out.print("Digite o tipo de medida (F - Fahrenheit | C - Celsius): ");
        String medida = texto.nextLine();

        System.out.printf("Digite uma temperatura em °%s: ", medida);
        Double temperatura = texto.nextDouble();

        if (medida.equalsIgnoreCase("F")) {
            System.out.printf("A temperatura %s°F é %.1f°C\n", temperatura, (temperatura - 32) * 5 / 9 );
            return;
        }

        if (medida.equalsIgnoreCase("C")) {
            System.out.printf("A temperatura %s°C é %.1f°F\n", temperatura, (temperatura * 9 / 5) + 32);
            return;
        }

        System.out.println("Tipo de medida inválida!");
    }
}
