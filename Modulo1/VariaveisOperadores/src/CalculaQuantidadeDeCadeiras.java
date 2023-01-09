//Calcula a quantidade de cadeiras disponiveis
import java.util.Scanner;
public class CalculaQuantidadeDeCadeiras {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        int cadeiras;
        System.out.println("Digite a quantidade de cadeiras: ");
        cadeiras = texto.nextInt();

        int fileiras;
        System.out.println("Digite a quantidade de fileiras: ");
        fileiras = texto.nextInt();

        int total = cadeiras * fileiras;
        System.out.println("A quantidade de cadieras disponiveis é: " + total);

        double pcd = 0.1 * total;
        System.out.printf("A quantidade de cadeiras para PCDs é de: %.0f", pcd);

        texto.close();
    }
}