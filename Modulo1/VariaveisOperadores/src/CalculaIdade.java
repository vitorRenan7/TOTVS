//Calcula a idade da pessoa
import java.util.Scanner;
public class CalculaIdade {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        int nascimento;
        System.out.println("Digite sua data de nascimento: ");
        nascimento = texto.nextInt();

        int anoAtual;
        System.out.println("Digite o ano atual: ");
        anoAtual = texto.nextInt();

        int idade = anoAtual - nascimento;
        System.out.println("Sua idade é: " + idade);

        texto.close();
    }
}