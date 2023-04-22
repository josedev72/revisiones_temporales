package com.proyecto.clasesTest;

import com.proyecto.clases.*;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class ApostadorTest {
    @Test
    public void probarTotalPuntosSinPronostico (){
        // Declaramos los valores/datos necesarios
        Apostador apostador = new Apostador("Maira");

        // Verificar Test
        assertEquals(0,apostador.totalPuntos());
    }

    @Test
    public void probarConUnSoloApostador(){
        // Cargar valores/datos necesarios
        Equipo equipo1 = new Equipo("Argentina", "3 estrellas");
        Equipo equipo2 = new Equipo("Mexico", "Concacaf");
        int golesEquipo1=2, golesEquipo2=0;

        Partido partido = new Partido(1, equipo1, equipo2, golesEquipo1, golesEquipo2);
        Pronostico pronostico = new Pronostico(partido, equipo1, ResultadoEnum.ganador);

        // Cargar Apostador con solo 1 Pronostico
        Apostador apostador = new Apostador("José", new Pronostico[]{ pronostico });

        // Verificar Test del metodo totalPuntos()
        assertEquals(1, apostador.totalPuntos());
    }

    @Test
    public void probarConVariosApostadores(){
        // Cargar valores/datos necesarios
        Equipo equipo1 = new Equipo("Argentina", "3 estrellas");
        Equipo equipo2 = new Equipo("Mexico", "Concacaf");
        int golesEquipo1=2, golesEquipo2=0;
        Partido partido1 = new Partido(1, equipo1, equipo2, golesEquipo1, golesEquipo2);

        Equipo equipo3 = new Equipo("Arabia Saudita", "Petrodolar");

        golesEquipo1 = 0;
        int golesEquipo3 = 2;
        Partido partido2 = new Partido(1, equipo1, equipo3, golesEquipo1, golesEquipo3);

        // Cargar los pronosticos
        Pronostico pronostico1 = new Pronostico(partido1, equipo1, ResultadoEnum.ganador);
        Pronostico pronostico2 = new Pronostico(partido2, equipo3, ResultadoEnum.perdedor);
        Pronostico[] pronosticos = { pronostico1, pronostico2 };

        // Un Apostador, varios pronosticos
        Apostador apostador = new Apostador("Laura", pronosticos);

        // Verificar Test del metodo totalPuntos()
        assertEquals(1, apostador.totalPuntos());
    }
}