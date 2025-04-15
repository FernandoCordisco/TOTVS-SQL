import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int idade;
        int parcelas;
        double salario;
        double valorSolicitado;

        System.out.println("Informe abaixo");

        System.out.println("Idade:");
        idade = scanner.nextInt();

        System.out.println("Salário:");
        salario = scanner.nextDouble();

        System.out.println("Valor desejado para o empréstimo:");
        valorSolicitado = scanner.nextDouble();

        System.out.println("Quantidade de parcelas:");
        parcelas = scanner.nextInt();

        // operação para saber se o valor a ser pago por mês é aceitável

        double valorParcela = valorSolicitado / parcelas;
        double porcentagemSalario = salario * 0.3;
        double porcentagemSalario2 = (valorParcela * 100) / salario;

        System.out.println(porcentagemSalario2);

        // resposta

        if (((idade <= 18) || (idade >= 65)) && ((parcelas <= 3) || (parcelas >= 24)) && ((porcentagemSalario < valorParcela))) {
            System.out.println("O empréstimo foi reprovado pelos seguintes motivos:");
            System.out.println("a idade não pode ser menor a 18 anos ou maior de 65 anos.");
            System.out.println("a quantidade de parcelas não pode ser inferior a 3 meses superior a 24 meses.");
            System.out.println("o valor da parcela desse empréstimo é de " + valorParcela + " reais, e corresponde " +
                                "a " + porcentagemSalario2 + "% da renda da pessoa. Esse valor não pode ser superior a 30%.");
        } else if ((idade >= 18) && (idade <= 65)) {
            if ((parcelas >= 3) && (parcelas <= 24)) {
                if (porcentagemSalario > valorParcela) {

                    System.out.println("A pessoa que está solicitando o empréstimo tem " + idade + " anos de idade e tem o salário de " + salario + " reais.");
                    System.out.println("O valor solicitado é de " + valorSolicitado + " reais para ser pago em " + parcelas + " parcelas.");
                    System.out.println("O empréstimo foi aprovado.");

                } else {
                    System.out.println("A pessoa que está solicitando o empréstimo tem " + idade + " anos de idade e tem o salário de " + salario + " reais.");
                    System.out.println("O valor solicitado é de " + valorSolicitado + " reais para ser pago em " + parcelas + " parcelas.");
                    System.out.println("O empréstimo foi reprovado devido ao valor");

                }
            } else {
                System.out.println("A pessoa que está solicitando o empréstimo tem " + idade + " anos de idade e tem o salário de " + salario + " reais.");
                System.out.println("O valor solicitado é de " + valorSolicitado + " reais para ser pago em " + parcelas + " parcelas.");
                System.out.println("O empréstimo foi reprovado devido a quantidade de parcelas.");

            }
        } else {
            System.out.println("A pessoa que está solicitando o empréstimo tem " + idade + " anos de idade e tem o salário de " + salario + " reais.");
            System.out.println("O valor solicitado é de " + valorSolicitado + " reais para ser pago em " + parcelas + " parcelas.");
            System.out.println("O empréstimo foi reprovado a sua idade.");

        }
    }
}
