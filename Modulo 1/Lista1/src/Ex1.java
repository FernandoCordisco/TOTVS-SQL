import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        int anoDeNascimento = 0;
        int anoAtual = 2022;

        System.out.println("Informe o seu ano de nascimento: ");
        anoDeNascimento = ler.nextInt();

        int idade = anoAtual - anoDeNascimento;

        System.out.println("Você tem " + idade + " anos!");


    }
}