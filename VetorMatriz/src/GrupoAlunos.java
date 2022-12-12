import java.util.Scanner;

public class GrupoAlunos {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);
        int nomeAluno;

        System.out.println("Digite o nome dos alunos: \n");
        nomeAluno = texto.nextInt();

        System.out.printf("%f", nomeAluno);
    }
}
