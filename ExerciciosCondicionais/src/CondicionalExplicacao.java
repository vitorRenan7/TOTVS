public class CondicionalExplicacao {
    public static void main(String[] args) {
       double valor = 1500;
       String marca = "iphone";
       int memoria = 1;

       if(valor <= 1500){
           if (memoria >= 6){
               System.out.println("Comprei!");
           } else{
               System.out.println("Não comprei. Memoria baixa");
           }
       }else{
           System.out.println("Não comprei esta muito caro");
       }


    }
}
