import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        double salario;

        System.out.println("Informe seu salario:");
        salario = scanner.nextDouble();

        if (salario <= 1212.00){
            double inss = salario * 0.075;
            System.out.println("O desconto do inss é de " + inss);
        }
        else if ((salario >= 1212.01) && ( salario <= 2427.35)){
            double inss = ((salario - 1212) * 0.09) + 90.9;
            System.out.println("O desconto do inss é de " + inss);
        }
        else if ((salario >=  2427.36) && ( salario <= 3641.03))
        {
            double inss = ((salario - 2427.35) * 0.12) + 200.28;
            System.out.println("O desconto do inss é de " + inss);
        }
        else if ((salario >=  3641.04) && ( salario <= 7087.22))
        {
            double inss = ((salario - 3641.03) * 0.14) + 255.02;
            System.out.println("O desconto do inss é de " + inss);
        }

    }
}
