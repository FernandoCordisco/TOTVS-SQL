import java.util.Random;
import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        int[] numerosAleatorios = new int[3];

        numerosAleatorios[0] = random.nextInt(6) + 1;
        numerosAleatorios[1] = random.nextInt(6) + 1;
        numerosAleatorios[2] = random.nextInt(6) + 1;
        int numeroEscolhido;

        System.out.println("Escolha um número entre 1 e 6:");
        numeroEscolhido = scanner.nextInt();

        for(int numero : numerosAleatorios) {
            System.out.println(numero);
        }


        if ((numeroEscolhido >=1) && (numeroEscolhido <=6)) {

            System.out.println("O número escolhido foi " + numeroEscolhido);
            System.out.println("O número sorteado foi " + numerosAleatorios[0] + ", "  + numerosAleatorios[1] + " e "  + numerosAleatorios[2]);

            if (numeroEscolhido == numerosAleatorios[0] && numeroEscolhido == numerosAleatorios[1] && numeroEscolhido == numerosAleatorios[2]){
                System.out.println("Você acertou 3!");
            }
            else if(numeroEscolhido == numerosAleatorios[1] && numeroEscolhido == numerosAleatorios[2]){
                System.out.println("Você acertou 2!");
            }
            else if(numeroEscolhido == numerosAleatorios[0] && numeroEscolhido == numerosAleatorios[2]){
                System.out.println("Você acertou 2!");
            }
            else if(numeroEscolhido == numerosAleatorios[0] && numeroEscolhido == numerosAleatorios[1]){
                System.out.println("Você acertou 2!");
            }
            else if(numeroEscolhido == numerosAleatorios[0]){
                System.out.println("Você acertou 1!");
            }
            else if(numeroEscolhido == numerosAleatorios[1]){
                System.out.println("Você acertou 1!");
            }
            else if(numeroEscolhido == numerosAleatorios[2]){
                System.out.println("Você acertou 1!");
            }
            else{
                System.out.println("Você errou!");
            }
        }

        else {
            System.out.println("O número escolhido não foi entre 1 e 6");
        }

    }
}
