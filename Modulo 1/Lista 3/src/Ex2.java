import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numero = 5;

        for (int degrau = 1; degrau <= numero; degrau++){
            for (int quantidadeNoDegrau = 0; quantidadeNoDegrau < degrau; quantidadeNoDegrau++){
                System.out.print("x");
            }
            System.out.println();

        }
    }
}
