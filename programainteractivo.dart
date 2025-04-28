import 'dart:io';
// [i]nput
// [o]utput


// STDIN
// [STANDARD]
// [INPUT]

// STDOUT
// [STANDARD]
// [OUT]

void main(List<String> argumentos) {
  print("Hola, soy un programa que calcula tu edad.");

  print("Por favor, ingresa tu anio de nacimiento [AAAA]");
  String anioDeNacimiento = stdin.readLineSync()!;
  int anioDeNacimientoParceado = int.parse(anioDeNacimiento);

  print("Por favor, ingresa el anio actual [AAAA]");
  String anioActual = stdin.readLineSync()!;
  int anioActualParceado = int.parse(anioActual);

  int edadResultado = anioActualParceado - anioDeNacimientoParceado;
  bool esMayorDeEdad = false;

  if (edadResultado >= 18) {
    esMayorDeEdad = true;
  } else {
    esMayorDeEdad = false;
  }

  print(
      "Si naciste en el año $anioDeNacimiento y el año actual es $anioActual, entonces tu edad es: $edadResultado");
  if (esMayorDeEdad) {
    print("como eres mayor de edad, estas bienvenido al club, pasa adelante!");
  } else {
    print("fuero de aqui menol");
  }
}
