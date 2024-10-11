// EJERCICIO 01 
//En una universidad, los alumnos están clasificados en cuatro categorías. A cada categoría le
//corresponde una pensión mensual distinta dada en la siguiente tabla:
//Categoría Pensión
//A S/. 550
//B S/. 500
//C S/. 460
//D S/. 400
//Semestralmente, la universidad efectúa rebajas en las pensiones de sus estudiantes a partir del
//segundo ciclo basándose en el promedio ponderado del ciclo anterior en porcentajes dados en
//la tabla siguiente:
//Promedio Descuento
//0 a 13.99 No hay descuento
//14.00 a 15.99 10 %
//16.00 a 17.99 12 %
//18.00 a 20.00 15 %
//Dado el promedio ponderado y la categoría de un estudiante, diseñe un programa que determine
//cuánto de rebaja recibirá sobre su pensión actual y a cuánto asciende su nueva pensión.

import 'dart:io';

// Función para obtener la pensión según la categoría
double obtenerPension(String categoria) {
  Map<String, double> pensiones = {
    'A': 550,
    'B': 500,
    'C': 460,
    'D': 400,
  };

  return pensiones[categoria] ?? 0;
}

// Función para obtener el descuento según el promedio
double obtenerDescuento(double promedio) {
  if (promedio < 14) {
    return 0;
  } else if (promedio < 16) {
    return 0.10;
  } else if (promedio < 18) {
    return 0.12;
  } else if (promedio <= 20) {
    return 0.15;
  }
  return 0; // Retornar 0 si el promedio es inválido
}

// Función para calcular la nueva pensión
double calcularNuevaPension(double pensionActual, double descuento) {
  double montoRebaja = pensionActual * descuento;
  return pensionActual - montoRebaja;
}

// Función principal
void main() {
  // Solicitar entrada de datos
  print("Ingrese la categoría del estudiante (A, B, C, D):");
  String categoria = stdin.readLineSync()!.toUpperCase();

  print("Ingrese el promedio ponderado del estudiante:");
  double promedio = double.parse(stdin.readLineSync()!);

  // Validar categoría
  double pensionActual = obtenerPension(categoria);
  if (pensionActual == 0) {
    print("Categoría inválida.");
    return;
  }

  // Obtener el descuento
  double descuento = obtenerDescuento(promedio);

  // Calcular la nueva pensión
  double nuevaPension = calcularNuevaPension(pensionActual, descuento);

  // Mostrar resultados
  double montoRebaja = pensionActual - nuevaPension;
  print("Monto de rebaja: S/. ${montoRebaja.toStringAsFixed(2)}");
  print("Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}");
}

