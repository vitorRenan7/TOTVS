import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);
        int quantidadeAluno = 3;
        Aluno[] alunos = new Aluno[quantidadeAluno];

        for(int i = 0; i < quantidadeAluno; i++){
            Aluno aluno = new Aluno();

            System.out.println("Digite o nome dos alunos: ");
            aluno.nome = texto.nextLine();

            System.out.println("Digite o e-mail do aluno: ");
            aluno.email = texto.nextLine();

            System.out.println("Digite a idade do aluno: ");
            String idadeString = texto.nextLine();
            aluno.idade = Integer.parseInt(idadeString);

            alunos[i] = aluno;
        }

        for(Aluno aluno : alunos){
            System.out.printf("Nome do aluno: %s -  e-amil: %s - idadde: %d\n", aluno.nome, aluno.email, aluno.idade);
        }
    }
}
