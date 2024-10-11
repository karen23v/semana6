// Ejercicio 02
//Una empresa evalúa a sus empleados bajo dos criterios: puntualidad y rendimiento. En cada caso,
//el empleado recibe un puntaje que va de 1 a 10, de acuerdo con los siguientes criterios:
//Puntaje por puntualidad: - está en función de los minutos de tardanza de acuerdo con la
//siguiente tabla:
//Minutos de tardanza Puntaje
//0 10
//1 a 2 8
//3 a 5 6
//6 a 9 4
//Mas de 9 0
//Puntaje por rendimiento: - está en función de la cantidad de observaciones efectuadas al
//empleado por no cumplir sus obligaciones de acuerdo con la siguiente tabla:
//Observaciones efectuadas Puntaje
//0 10
//1 8
//2 5
//3 1
//Mas de 3 0
//El puntaje total del empleado es la suma del puntaje por puntualidad más el puntaje por
//rendimiento. Basándose en el puntaje total, el empleado recibe una bonificación anual de acuerdo
//con la siguiente tabla:
//Puntaje total Bonificación
//Menos de 11 S/. 2.5 por punto
//11 a 13 S/. 5.0 por punto
//14 a 16 S/. 7.5 por punto
//17 a 19 S/. 10.0 por punto
//20 S/. 12.5 por punto
// los minutos de tardanza y el número de observaciones de un empleado, diseñe un
//programa que determine el puntaje por puntualidad, el puntaje por rendimiento, el puntaje total
//y la bonificación que le corresponden

import 'dart:io';

void main(List<String> arguments) {
  print("Ingrese los minutos de tardanza del empleado:");
  String minutosString = stdin.readLineSync() ?? '';
  int minutos = int.parse(minutosString);

  print("Ingrese las observaciones del empleado:");
  String observacionesString = stdin.readLineSync() ?? '';
  int observaciones = int.parse(observacionesString);

  double bonificacionTotal = bonificacion(
      puntosObservaciones(observaciones),
      CalcularPuntajeMinutos(minutos));

  print("La bonificación del trabajador es: \$${bonificacionTotal}");
}

int CalcularPuntajeMinutos(int minutos) {
  if (minutos < 1) {
    return 10;
  } else if (minutos <= 2) {
    return 8;
  } else if (minutos <= 5) {
    return 6;
  } else if (minutos <= 9) {
    return 4;
  } else {
    return 0;
  }
}

int puntosObservaciones(int observaciones) {
  if (observaciones < 1) {
    return 10;
  } else if (observaciones == 1) {
    return 8;
  } else if (observaciones == 2) {
    return 5;
  } else if (observaciones == 3) {
    return 1;
  } else {
    return 0;
  }
}

double bonificacion(int puntajeObservaciones, int puntajeMinutos) {
  int totalPuntaje = puntajeObservaciones + puntajeMinutos;

  if (totalPuntaje < 11) {
    return totalPuntaje * 2.5;
  } else if (totalPuntaje < 13) {
    return totalPuntaje * 5.0;
  } else if (totalPuntaje < 16) {
    return totalPuntaje * 7.5;
  } else if (totalPuntaje < 19) {
    return totalPuntaje * 10.0;
  } else {
    return totalPuntaje * 12.5;
  }
}
