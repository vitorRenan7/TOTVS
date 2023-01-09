package piscina;

import piscina.Piscina;
import utils.Leitor;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Piscina piscina = new Piscina();
        Leitor leitor = new Leitor();

       piscina.largura = leitor.lerDecimal("Digite a largura: ");
       piscina.comprimento = leitor.lerDecimal("Digite o comprimento: ");
       piscina.profundidade = leitor.lerDecimal("");
    }
}