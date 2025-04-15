import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

       int fileiras, cadeirasPorFileira;

        System.out.println("Quantidade de fileiras: ");
        fileiras = ler.nextInt();

        System.out.println("Quantidade de cadeiras por fileira: ");
        cadeirasPorFileira = ler.nextInt();

        int cadeiras = fileiras * cadeirasPorFileira;
        double assentosEspeciais = cadeiras * 0.10;

        System.out.print("A sala de cinema conta com " + fileiras + " fileiras e " + cadeirasPorFileira + " cadeiras por fileira. ");
        System.out.println(" Contabilizando " + cadeiras + " cadeiras");
        System.out.println("Sendo " + assentosEspeciais + " cadeiras, assentos para pessoas com deficiência");



    }
}
