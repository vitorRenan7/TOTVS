// Converter o real em outras moedas

import java.util.Scanner;

public class ConverteRealEmOutrasMMoedas {
    public static void main(String[] args) {
        Scanner texto = new Scanner(System.in);

        double real;
        System.out.printf("Digite o valor em real que deseja ser convertido: \n");
        real = texto.nextDouble();

        double dolar = 5.34;
        double euro = 5.53;
        double dolarCanadense = 4.01;
        double dirham = 1.45;
        double libraEsterlina = 6.32;

        double conversaoDolar = real / dolar;
        double conversaoEuro = real / euro;
        double conversaoDolarCanadense = real / dolarCanadense;
        double conversaoDirham = real / dirham;
        double conversaoLibra = real / libraEsterlina;

        String moedaEscolhida;
        System.out.printf("Escolha em qual moeda o real será converido \n" +
                "'D' para dolar. \n " + "'E' para euro. \n" +
                "'C' para dolar canadense \n" +
                "'H' para dirham \n" +
                "'E' para libra esterlina \n" +
                "'T' para converter em todos os valores. \n" +
                "Qual sua escolha: \n");
        moedaEscolhida = texto.next();
        if (moedaEscolhida.equalsIgnoreCase("D")) {
            System.out.printf("O valor de %.2f reais convertido em Dolar é de: %.2f", real, + conversaoDolar);
        }
        if (moedaEscolhida.equalsIgnoreCase("C")) {
            System.out.printf("O valor de %.2f reaias convertido em dolar canadense é de: %.2f", real, + conversaoDolarCanadense);
        }
        if (moedaEscolhida.equalsIgnoreCase("H")){
            System.out.printf("O valor de %.2f reais convertido em dirham é de: %.2f", real, + conversaoDirham);
        }
        if (moedaEscolhida.equalsIgnoreCase("E")){
            System.out.printf("O valor de %.2f reais convertido em libra esterlina é de: %.2f ", real, + conversaoLibra);
        }
        if (moedaEscolhida.equalsIgnoreCase("T")){
            System.out.printf("O valor de %.2f convertido para todas as moedas é de: %.2",real );
        }
    }
}
