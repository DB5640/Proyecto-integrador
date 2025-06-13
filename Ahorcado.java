package tarea;

import java.util.Scanner;

public class Ahorcado {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String palabra = "mamborap";
        int cantidadLetras = palabra.length();
        String letra = null;
        StringBuilder palabraParcial = new StringBuilder();
        int letrasSinAdivinar = cantidadLetras;
        int intentos = 5;
        System.out.println("adivina la palabra de " + cantidadLetras + " letras");

        for (int i = 0; i < cantidadLetras; i++) {
            palabraParcial.append("_");
        }
        System.out.println(palabraParcial);

        while (letrasSinAdivinar > 0 && intentos > 0) {
            System.out.println("ingrese una letra");
            letra = sc.nextLine();

            if (palabra.contains(letra)) {


                System.out.println("Correcto!");

                for (int i = 0; i < cantidadLetras; i++) {
                    if (palabra.charAt(i) == letra.charAt(0)) {
                        palabraParcial.deleteCharAt(i);
                        palabraParcial.insert(i, letra);
                        letrasSinAdivinar -= 1;
                    }
                }
                System.out.println(palabraParcial);
            } else {
                intentos--;
                System.out.println("incorrecto te quedan " + intentos + " intentos");
            }
        }
        if(letrasSinAdivinar == 0) {
            System.out.println("Advinaste la palabra " + palabra);
        } else {
            System.out.println("PERDISTE!!");
        }
    }
}
