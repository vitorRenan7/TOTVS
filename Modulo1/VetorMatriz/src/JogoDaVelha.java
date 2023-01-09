import java.util.Arrays;
import java.util.Scanner;

public class JogoDaVelha {
    private static final Scanner entrada = new Scanner(System.in);
    private static final String[] simbolosTabuleiro = {" ", "X", "O"};
    private static final Integer[][] condicoesVitoria = {{0, 1, 2}, {3, 4, 5}, {6, 7, 8}, {0, 3, 6}, {1, 4, 7}, {2, 5, 8}, {0, 4, 8}, {2, 4, 6}};
    private static final Integer[] pecasTabuleiro = new Integer[9];

    public static void main(String[] args) {
        Boolean continuarJogando = true;

        while (continuarJogando) {
            comecarJogo();

            while (true) {
                efetuarJogada(0);
                desenharTabuleiro();
                if (validarVitoria(0)) {
                    break;
                }

                efetuarJogada(1);
                desenharTabuleiro();
                if (validarVitoria(1)) {
                    break;
                }

                if (validarEmpate()) {
                    System.out.println("O jogo terminou em empate!");
                    break;
                }
            }

            System.out.println("Deseja continuar jogando? (s/n)");
            String respostaUsuario = entrada.nextLine();
            if (!respostaUsuario.equalsIgnoreCase("s")) {
                continuarJogando = false;
            }
        }

        System.out.println("Saindo do jogo...");
    }

    public static void comecarJogo() {
        System.out.println("Iniciando partida...");
        Arrays.fill(pecasTabuleiro, 0);
        desenharTabuleiro();
    }

    public static void desenharTabuleiro() {
        System.out.println();
        for (int i = 0; i < pecasTabuleiro.length; i++) {
            System.out.print(simbolosTabuleiro[pecasTabuleiro[i]]);
            System.out.print((i + 1) % 3 == 0 ? "\n" : " | ");
        }
        System.out.println();
    }

    public static void efetuarJogada(Integer jogador) {
        Boolean informacaoInvalida = true;
        String textoPosicaoInformada = "";
        Integer valorPosicaoInformada = 0;

        while (informacaoInvalida) {
            if (validarEmpate()) {
                return;
            }

            System.out.printf("\nTurno do jogador %d\n", jogador + 1);
            System.out.print("Escolha uma posição de 1 a 9: ");

            try {
                textoPosicaoInformada = entrada.nextLine();
                valorPosicaoInformada = Integer.parseInt(textoPosicaoInformada);
                if (validarPosicao(valorPosicaoInformada)) {
                    informacaoInvalida = false;
                }
            } catch (NumberFormatException error) {
                System.out.printf("A posição informada é inválida: %s\n", textoPosicaoInformada);
            }
        }

        pecasTabuleiro[valorPosicaoInformada - 1] = jogador + 1;
    }

    public static Boolean validarPosicao(Integer posicao) {
        if (posicao < 1 || posicao > 9) {
            System.out.printf("A posição precisa estar entre 1 e 9: %d\n", posicao);
            return false;
        } else if (pecasTabuleiro[posicao - 1] != 0) {
            System.out.printf("A posição %d já está ocupada com uma peça do jogador %d\n", posicao, pecasTabuleiro[posicao - 1]);
            return false;
        }

        return true;
    }

    public static Boolean validarVitoria(Integer jogador) {
        for (Integer[] condicao : condicoesVitoria) {
            if (pecasTabuleiro[condicao[0]] == jogador + 1 && pecasTabuleiro[condicao[1]] == jogador + 1 && pecasTabuleiro[condicao[2]] == jogador + 1) {
                System.out.printf("O jogador %d venceu!!!\n", jogador + 1);
                return true;
            }
        }

        return false;
    }

    public static Boolean validarEmpate() {
        Integer pecasPreenchidas = 0;

        for (Integer peca : pecasTabuleiro) {
            if (peca != 0) {
                pecasPreenchidas++;
            }
        }

        return pecasPreenchidas == 9;
    }

}
