package com.proyecto.clases;

public class Partido {
    private int ronda;
    private Equipo equipo1;
    private Equipo equipo2;
    private int golesEq1;
    private int golesEq2;

    public Partido(int ronda, Equipo equipo1, Equipo equipo2) {
        this.ronda = ronda;
        this.equipo1 = equipo1;
        this.equipo2 = equipo2;
    }

    public Partido(int ronda, Equipo equipo1, Equipo equipo2, int golesEq1, int golesEq2) {
        this.ronda = ronda;
        this.equipo1 = equipo1;
        this.equipo2 = equipo2;
        this.golesEq1 = golesEq1;
        this.golesEq2 = golesEq2;
    }

    public int getRonda() {
        return ronda;
    }

    public void setRonda(int ronda) {
        this.ronda = ronda;
    }

    public Equipo getEquipo1() {
        return equipo1;
    }
    public void setEquipo1(Equipo equipo1) {
        this.equipo1 = equipo1;
    }
    public Equipo getEquipo2() {
        return equipo2;
    }
    public void setEquipo2(Equipo equipo2) {
        this.equipo2 = equipo2;
    }
    public int getGolesEq1() {
        return golesEq1;
    }
    public void setGolesEq1(int golesEq1) {
        this.golesEq1 = golesEq1;
    }
    public int getGolesEq2() {
        return golesEq2;
    }
    public void setGolesEq2(int golesEq2) {
        this.golesEq2 = golesEq2;
    }
    public EnumResultado resultado(Equipo equipo) {
        //En caso de empate, no es necesario preguntar por el equipo1 o equipo2
        if(golesEq1 == golesEq2) {
            return EnumResultado.EMPATE;
        }
        //Si es equipo1
        if(equipo.getNombre().equals(equipo1.getNombre())) {
            if(golesEq1>golesEq2) {
                return EnumResultado.GANADOR;
            }	else {
                return EnumResultado.PERDEDOR;
            }
        } else {
            // Si no, es equipo2
            if(golesEq2>golesEq1) {
                return EnumResultado.GANADOR;
            }	else {
                return EnumResultado.PERDEDOR;
            }
        }
    }
}

