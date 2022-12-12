import java.util.Scanner;

public class NumerosPrimos {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        System.out.println("Digite um número maior que 0: \n");
        Integer numero = texto.nextInt();

        if(numero < 1){
            System.out.printf("Você digitou um número inválido!");
            return;
        }

        for(int i = 1; i < numero; i++){

        }
    }
}
