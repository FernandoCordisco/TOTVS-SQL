import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        double milha = 0.621371;
        double km;

        System.out.println("Quantos quilometros foram percorridos? ");
        km = ler.nextDouble();

        double total = milha * km;

        System.out.printf(km + "kms equivalem a %.2f milhas", total);
    }
}
