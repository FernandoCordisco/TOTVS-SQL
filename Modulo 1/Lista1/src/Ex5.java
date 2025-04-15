import java.util.Scanner;

public class Ex5 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        double celsius;

        System.out.println("Qual a temperatura em celsius?");
        celsius = ler.nextDouble();

         double fahrenheit = (celsius * 9/5) + 32;

        System.out.println(celsius + "°C equivalem a " + fahrenheit + "°F" );
    }
}
