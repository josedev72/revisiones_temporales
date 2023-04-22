package com.proyecto.clasesTest;

import com.proyecto.clases.Equipo;
import com.proyecto.clases.Partido;
import com.proyecto.clases.ResultadoEnum;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;


public class PartidoTest {
    @Test
    public void probarResultadoGanaEquipo1(){
        //Datos necesarios
        Equipo equipo1 = new Equipo("Argentina", "");
        Equipo equipo2 = new Equipo("Mexico", "");
        int golesEquipo1, golesEquipo2;
        golesEquipo1=2;
        golesEquipo2=0;

        //constructor Partido(int ronda, Equipo equipo1, Equipo equipo2, int golesEquipo1, int golesEquipo2)
        Partido partido=new Partido(1,equipo1,equipo2,golesEquipo1,golesEquipo2);

        ResultadoEnum resultado = ResultadoEnum.ganador;
        // probar el metodo resultado de la clase Partido
        Assertions.assertEquals(resultado, partido.resultado(equipo1));
    }

    @Test
    public void probarResultadoPierdeEquipo2(){
        //Datos necesarios
        Equipo equipo1 = new Equipo("Argentina", "");
        Equipo equipo2 = new Equipo("Mexico", "");
        int golesEquipo1, golesEquipo2;
        golesEquipo1=2;
        golesEquipo2=0;

        //constructor Partido(int ronda, Equipo equipo1, Equipo equipo2, int golesEquipo1, int golesEquipo2)
        Partido partido=new Partido(1, equipo1, equipo2, golesEquipo1, golesEquipo2);

        ResultadoEnum resultado = ResultadoEnum.perdedor;
        // probar el metodo resultado de la clase Partido
        Assertions.assertEquals(resultado, partido.resultado(equipo2));
    }
}
