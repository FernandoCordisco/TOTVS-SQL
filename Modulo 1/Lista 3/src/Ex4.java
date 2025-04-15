import java.util.Random;
import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();


        int numeroDesejado;

        System.out.println("Informe o número para ser sorteado:");
        numeroDesejado = scanner.nextInt();

        int tentativa = 0;
//        for (int i = 0; i < 10;) {
//
//            int numeroSorteado = random.nextInt(1, 7);
//            System.out.print(numeroSorteado + ", ");
//            if (numeroSorteado == numeroDesejado) {
//                i = 10;
//            } else {
//                i = 2;
//            }
//            tentativa++;
//        }

        int numeroSorteado = 0;
        while (numeroSorteado != numeroDesejado){
            numeroSorteado = random.nextInt(1, 7);
            System.out.print(numeroSorteado + ", ");
            tentativa++;
        }
        System.out.printf("\nO numero foi sorteado na %dª tentativa", tentativa);
    }
}
