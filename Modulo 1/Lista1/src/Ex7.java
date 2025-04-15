import java.util.Scanner;

public class Ex7 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        double largura =  Double.parseDouble(args[0]);
        double comprimento =  Double.parseDouble(args[1]);
        double profundidadeInicial =  Double.parseDouble(args[2]);
        double profundidadeFinal = Double.parseDouble(args[3]);

        double calculo = (largura * comprimento * ((profundidadeInicial + profundidadeFinal) / 2)) * 1000 ;

        System.out.printf("As dimensões da piscina são %.2f m x %.2f m. Sua profundiade inicial é %.2f m e sua profundidade final é %.2f m. %n", largura, calculo, profundidadeInicial, profundidadeFinal);
        System.out.printf("Essa piscina comporta %.2f litros de água.", calculo);


    }
}