import java.util.Scanner;

public class OcorrenciaLetra {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite uma palavra: ");
        String palavra = entrada.nextLine();

        System.out.print("Digite uma letra: ");
        String letra = entrada.nextLine();

        Integer contagemLetras = 0;

        if (letra.length() != 1) {
            System.out.printf("É necessário informar apenas uma letra, mas foi informado %d", letra.length());
            return;
        }

        for (int i = 0; i < palavra.length(); i++) {
            if (letra.charAt(0) == palavra.charAt(i)) {
                contagemLetras++;
            }
        }

        System.out.printf("A quantidade de letras %s na palavra %s é %d", letra, palavra, contagemLetras);
    }

}