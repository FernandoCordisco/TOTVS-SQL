package rpg;

import java.util.Random;

public class Ataque {

    Personagem personagem = new Personagem();
    Orc orc = new Orc();

    Random random = new Random();
    int dadoD20Orc = random.nextInt(0,21);
    int dadoD20Personagem = random.nextInt(0,21) + personagem.precisao;
    int dadoDanoPersonagem = random.nextInt(0,9);
    int dadoDanoOrc = random.nextInt(0,13);

    public boolean ataquePersonagem(){

        if (dadoD20Personagem >= orc.defesa){
            orc.hp = orc.hp - dadoDanoPersonagem;

            System.out.printf("O personagem causou %d de dano, deixando o orc com %d de vida \n",
                    dadoDanoPersonagem, orc.hp);
            if (orc.hp <= 0){
                System.out.println("Vitoria do personagem");
                return false;
            }
            else {
                System.out.println("Turno do orc");
                return true;
            }
        }
        else {
            System.out.println("Personagem não deu dano");
            System.out.println("Turno do orc");
            return true;
        }
    }

    public boolean ataqueOrc(){
        if (dadoD20Orc >= personagem.defesa){
            personagem.hp = personagem.hp - dadoDanoOrc;
            System.out.printf("O orc causou %d de dano, deixando o orc com %d de vida \n",
                    dadoDanoOrc, personagem.hp);
            if (personagem.hp <= 0){
                System.out.println("Vitoria do orc");
                return false;
            }
            else {
                System.out.println("Turno do personagem");
                return true;
            }
        }
        else {
            System.out.println("Orc não deu dano");
            System.out.println("Turno do personagem");
            return true;
        }
    }




}
