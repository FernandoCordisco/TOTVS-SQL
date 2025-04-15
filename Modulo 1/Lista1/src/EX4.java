import java.util.Scanner;

public class EX4 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        double real;

        System.out.println("Qual o valor em real para ser convertido?");
        real = ler.nextDouble();

        double dolar = 0.19 * real;
        double euro = 0.19 * real;
        double libra = 0.16 * real;
        double pesoArgentino = 30.45 * real;
        double coroaTcheca = 4.58 * real;

        System.out.printf("R$ " + real + " equivalem a %.2f doláres %n", dolar);
        System.out.printf("R$ " + real + " equivalem a %.2f euros %n", euro);
        System.out.printf("R$ " + real + " equivalem a %.2f libras %n", libra);
        System.out.printf("R$ " + real + " equivalem a %.2f pesos argentinos %n", pesoArgentino);
        System.out.printf("R$ " + real + " equivalem a %.2f coroas tchecas %n", coroaTcheca);

    }
}
