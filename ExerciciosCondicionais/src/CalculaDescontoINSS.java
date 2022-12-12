//Calculo do INSS

import java.util.Scanner;
public class CalculaDescontoINSS {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);
//

        double salario;
        System.out.printf("Digite seu salario: \n");
        salario = texto.nextDouble();

        double Aliquota9 = 0.09;
        double Aliquota12 = 0.12;
        double Aliquota14 = 0.14;


        if(salario <= 1212){
            double salarioMinimo = salario * 0.075;
            System.out.printf("O valor a ser pago ao inss é de %.2f", salarioMinimo);
        }

        if (salario >= 1212.01 && salario <= 2427.35){
            double SegundaFaixaSalarial = (salario - 1212);
            double salarioMedioAliquota9 = SegundaFaixaSalarial * 0.09;
            double SomaAliquota9 = 90.90 + salarioMedioAliquota9;

            System.out.printf("A aliquota para ser paga ao inss é de :%.2f", SomaAliquota9);
        }

        if (salario >= 2427.36 && salario <= 3641.03){
            double SomaTeto3 = (2427.35 - 1212) * 0.09;
            double teste = (salario - 2427.35) * 0.12;
            double SomaAliquota12 = 90.90 + SomaTeto3 + teste;

            System.out.printf("%.2f", SomaAliquota12);
        }


        if(salario >= 3641.04 && salario <= 7087.22){
            double SomaTeto4 = (2427.35 - 1212) * 0.09; // Essa conta da 1215. 35, e já estou tirando os 9%
            double teste1 = (3641.03 - 2427.35) * 0.12;
            double teste3 = (salario - 3641.03) * 0.14;
            double SomaAliquota14 = 90.90 + SomaTeto4 + teste1 + teste3;

            System.out.printf("%.2f", SomaAliquota14);
        }

        if(salario > 7087.22){
            double SomaTeto5 = (2427.35 - 1212) * 0.09;
            double Teste3 = (3641.03 - 2427.35) * 0.12;
            double Teste6 = (7087.22 - 3641.03) * 0.14;
            double SomaAliquota14 = 90.90 + SomaTeto5 + Teste3 + Teste6;

            System.out.printf("%.2f", SomaAliquota14);
        }



    }
}
