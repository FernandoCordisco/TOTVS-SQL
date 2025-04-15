import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        String tipoDeTemperatura;
        double temperatura;

        System.out.println("Informe a temperatura que deseja saber a conversão: ");
        System.out.println("Sendo C para Celsius e F para Fahrenheit");
        tipoDeTemperatura = scanner.next();

        if (tipoDeTemperatura.equals("C")) {
            System.out.println("Informe a temperatura em celsius: ");
            temperatura = scanner.nextDouble();

            double conversao = (temperatura * 9/5) + 32;

            System.out.printf("%.2f°C equivalem a %.2f°F", temperatura, conversao);

        }
        if (tipoDeTemperatura.equals("F")) {
            System.out.println("Informe a temperatura em fahrenheit: ");
            temperatura = scanner.nextDouble();

            double conversao = (temperatura - 32) * 5/9;

            System.out.printf("%.2f°F equivalem a %.2f°C", temperatura, conversao);

        }

        else {
            System.out.println("A informação inserida não abrange nenhuma das opções");
        }
    }
}
