//Una tienda vende tres tipos de productos a los precios dados en la siguiente tabla:
//Producto Precio
//P1 S/. 15.0
//P2 S/. 17.5
//P3 S/. 20.0
//Como oferta la tienda ofrece un regalo de acuerdo con la siguiente tabla:
//Unidades adquiridas Regalo
//Menos de 26 Un lapicero
//26 a 50 Un cuaderno
//Más de 50 Una agenda
//Dado el tipo de producto y la cantidad de unidades adquiridas, diseñe un programa que
//determine el importe a pagar y el regalo.

import 'dart:io';

// Función para obtener el precio del producto según el tipo
double obtenerPrecioProducto(String tipoProducto) {
  Map<String, double> precios = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

  return precios[tipoProducto] ?? 0;
}

// Función para determinar el regalo según la cantidad de unidades adquiridas
String obtenerRegalo(int cantidad) {
  if (cantidad < 26) {
    return 'Un lapicero';
  } else if (cantidad <= 50) {
    return 'Un cuaderno';
  } else {
    return 'Una agenda';
  }
}

// Función principal
void main() {
  // Solicitar el tipo de producto
  print("Ingrese el tipo de producto (P1, P2, P3):");
  String tipoProducto = stdin.readLineSync()!;

  // Solicitar la cantidad de unidades adquiridas
  print("Ingrese la cantidad de unidades adquiridas:");
  int cantidadUnidades = int.parse(stdin.readLineSync()!);

  // Obtener el precio del producto
  double precioUnitario = obtenerPrecioProducto(tipoProducto);

  if (precioUnitario == 0) {
    print("Tipo de producto inválido.");
    return;
  }

  // Calcular el importe a pagar
  double importeAPagar = precioUnitario * cantidadUnidades;

  // Obtener el regalo
  String regalo = obtenerRegalo(cantidadUnidades);

  // Mostrar los resultados
  print("Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}");
  print("Regalo: $regalo");
}
