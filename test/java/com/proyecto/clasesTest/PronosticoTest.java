package com.proyecto.clasesTest;

import com.proyecto.clases.Equipo;
import com.proyecto.clases.Partido;
import com.proyecto.clases.Pronostico;
import com.proyecto.clases.ResultadoEnum;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class PronosticoTest {
    @Test
    public void probarPuntosPronosticos() {
        // Declaramos los valores/datos necesarios

        // Constructor Equipo(String nombre, String descripcion)
        Equipo equipo1 = new Equipo("Argentina", "el de la 3ra estrella");
        Equipo equipo2 = new Equipo("Mexico", "");

        // Constructor Partido(int ronda, Equipo equipo1, Equipo equipo2, int golesEquipo1, int golesEquipo2)
        Partido partido = new Partido(1, equipo1, equipo2, 2, 0);
        ResultadoEnum resultado = ResultadoEnum.ganador;

        // Constructor Pronostico(Partido partido, Equipo equipo, ResultadoEnum resultado)
        Pronostico pronostico = new Pronostico(partido, equipo1, resultado);

        // probar el metodo puntosPronosticos de la clase Pronostico
        Assertions.assertEquals(1,pronostico.puntosPronosticos());
    }
}
