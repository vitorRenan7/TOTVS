//Determina se o aluno foi aprovado ou reprovado

import java.util.Scanner;
public class CalculaMediaDoAluno {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        String nome;
        System.out.println("Digite o nome do aluno: ");
        nome = texto.nextLine();

        double notaUm;
        System.out.println("Digite a primeira nota do aluno: ");
        notaUm = texto.nextDouble();

        double notaDois;
        System.out.println("Digite a segunda nota do aluno: ");
        notaDois = texto.nextDouble();

        double notaTres;
        System.out.println("Digite a terceira nota do aluno: ");
        notaTres = texto.nextDouble();

        double notaQuatro;
        System.out.println("Digite a quarta nota do aluno: ");
        notaQuatro = texto.nextDouble();

        double somaNota = (notaUm + notaDois + notaTres + notaQuatro) / 4;

        if (somaNota >= 6.5){
            System.out.printf("O aluno %s foi aprovado com a média de: %f!", nome, somaNota);
        } else if (somaNota < 6.5) {
            System.out.printf("O aluno %s foi reprovado com a nota de: %f!", nome, somaNota);
        }

    }
}

