import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        double largura;
        double comprimento;
        double profundidadeInicial;
        double profundidadeFinal;

        System.out.println("Informe a largura:");
        largura = ler.nextDouble();

        System.out.println("Informe o comprimento:");
        comprimento = ler.nextDouble();

        System.out.println("Informe a profundidade inicial:");
        profundidadeInicial = ler.nextDouble();

        System.out.println("Informe a profundidade final:");
        profundidadeFinal = ler.nextDouble();

        double calculo = (largura * comprimento * ((profundidadeInicial + profundidadeFinal) / 2)) * 1000 ;

        System.out.printf("As dimensões da piscina são %.2f m x %.2f m. Sua profundiade inicial é %.2f m e sua profundidade final é %.2f m. %n", largura, calculo, profundidadeInicial, profundidadeFinal);
        System.out.printf("Essa piscina comporta %.2f litros de água.", calculo);


    }
}
