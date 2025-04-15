import java.util.ArrayList;
import java.util.Scanner;

public class Ex3 {

    private static ArrayList<String> alunos = new ArrayList<>();

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

//        variaveis iniciais
        int quantidadeDeAlunos = 0;
        int validar = 0;
        boolean run = true;
        int pessoasNoGrupo;

//        Pessoas no grupo
        System.out.println("Quantidade de alunos por grupo:");
        pessoasNoGrupo = scanner.nextInt();


//        quantidade de alunos
        while (run) {
            System.out.println("insira a quantidade de alunos:");
            quantidadeDeAlunos = scanner.nextInt();
            if (quantidadeDeAlunos == 0) {
                run = true;
            } else {
                int multiplo = quantidadeDeAlunos % pessoasNoGrupo;
                if (multiplo == 0) {
                    run = false;
                } else {
                    run = true;
                }
            }
        }

//        nome de alunos

        System.out.println("Informe o nome dos alunos:");
        for (int i = 0; i <= quantidadeDeAlunos; i++) {
            alunos.add(scanner.nextLine());

        }

//        quantidade de grupos
        int quantidadeDeGrupos = quantidadeDeAlunos / pessoasNoGrupo;
        int alunosNoGrupo = 0;
        for (int j = 0; j < quantidadeDeGrupos; j++){
            System.out.println("\ngrupo " + (j+1)); ;
            for (int i = 0; i < pessoasNoGrupo; i++){
                System.out.println(alunos.get(alunosNoGrupo + 1));
                alunosNoGrupo ++;
            }

        }

    }
}