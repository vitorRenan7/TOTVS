//Emprestimo
import java.util.Scanner;

public class Emprestimo {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        String nome;
        int idade;
        int salario;
        int valorSolicitado;

        System.out.println("Digite seu nome: ");
        nome = texto.nextLine();

        System.out.println("Digite sua idade: ");
        idade = texto.nextInt();

        System.out.println("Digite seu salario: ");
        salario = texto.nextInt();

        System.out.println("Digite o valor do emprestimo desejado: ");
        valorSolicitado = texto.nextInt();

        //

        int parcela;

        System.out.println("Digite a quantidade de parcelas: ");
        parcela = texto.nextInt();

        double valorParcela = valorSolicitado / parcela;
        double porSalario = salario * 0.3;

        if((idade >= 18) && (idade <= 65)){
            if ((parcela >= 3) && ( parcela<= 24)){
                if(porSalario > parcela){
                    System.out.println("Aprovado!");
                } else{
                    System.out.println("Reprovado devido ao salario");
                }
            }
            else{
                System.out.println("Reprovado devido a quantidade de parcalas!");
            }

        }
        else{
            System.out.println("Reprovado devido a idade");
        }
    }
}
