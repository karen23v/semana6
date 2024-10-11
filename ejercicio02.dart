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
