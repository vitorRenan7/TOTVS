import java.util.Scanner;

public class Escada {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        System.out.println("Digite um número: \n");
        Integer numero = texto.nextInt();

        System.out.printf("O número recbido foi: %d \n", numero);

        for(int i = 1; i <= numero; i++){
            for(int j = 0; j < i; j++){
                System.out.print("#");
            }
            System.out.println();
        }
    }
}