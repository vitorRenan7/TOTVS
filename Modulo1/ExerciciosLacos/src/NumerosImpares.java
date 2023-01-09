import java.util.Scanner;

public class NumerosImpares {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int numero;

        System.out.print("Digite um número maior que 0: \n");
        numero = entrada.nextInt();

        System.out.printf("Números ímpares até %d\n", numero);
        for(int i = 1; i < numero; i  +=2){
            System.out.println(i);
        }

    }
}
