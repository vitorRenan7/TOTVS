//Calcula o volume da piscina
import java.util.Scanner;
public  class CalculaVolumaDaPiscina {
        public static void main(String[] args) {
                Scanner texto = new Scanner(System.in);

                System.out.println("Digite a altura da piscina: ");
                Double altura = texto.nextDouble();

                System.out.println("Digite a largura da piscina: ");
                Double largura = texto.nextDouble();

                System.out.println("Digite a profundidade inicial da piscina: ");
                Double profundidadeInicial = texto.nextDouble();

                System.out.println("Digite a profundidade final da piscina: ");
                Double profundidadeFinal = texto.nextDouble();

                System.out.printf("As dimensões da piscina são %.1f x %.1f | profundidade %.1f a %.1f\n", altura, largura, profundidadeInicial, profundidadeFinal);
                System.out.printf("Essa piscina comporta %.1f litros", altura * largura * ((profundidadeFinal + profundidadeInicial) / 2) * 1000);
        }
}