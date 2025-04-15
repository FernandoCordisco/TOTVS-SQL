import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        double n1;
        double n2;
        double n3;
        double n4;

        System.out.println("Informe as notas do aluno");

        System.out.println("nota 1:");
        n1 = scanner.nextDouble();

        System.out.println("nota 2:");
        n2 = scanner.nextDouble();

        System.out.println("nota 3:");
        n3 = scanner.nextDouble();

        System.out.println("nota 4:");
        n4 = scanner.nextDouble();

        double media = (n1 + n2 + n3 + n4) / 4;

        if (media >= 6) {
            System.out.println("A média final é " + media);
            System.out.println("O aluno foi aprovado!");
        }

        else {
            System.out.println("A média final é " + media);
            System.out.println("O aluno foi reprovado!");
        }
    }
}
