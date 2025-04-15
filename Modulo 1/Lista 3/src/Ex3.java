import java.util.Random;
import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        int quantidadeDeSorteios = Integer.parseInt(args[0]);
        int soma = 0;

        for (int i = 0; i < quantidadeDeSorteios; i++){
            int numeroSorteio = random.nextInt(1, 7);

            soma += numeroSorteio;

            System.out.println(numeroSorteio);
        }

        System.out.println(soma);

    }
}
