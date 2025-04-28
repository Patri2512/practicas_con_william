import 'dart:io';

void main(List<String> arguments) {
  const int numeroObjetivo = 42;

  print("¡Bienvenido al juego de adivinar el número!");

  print("Introduce un número entero entre 1 y 100:");
  String numeroIngresadoCrudo = stdin.readLineSync()!;
  int numeroIngresado = int.parse(numeroIngresadoCrudo);

  bool numeroEsCorrecto = false;

  if (numeroIngresado > numeroObjetivo) {
    numeroEsCorrecto = false;
  } else if (numeroIngresado < numeroObjetivo) {
    numeroEsCorrecto = false;
  } else {
    numeroEsCorrecto = true;
  }

  if (numeroEsCorrecto) {
    print("¡Felicidades! Adivinaste el número.");
  } else {
    print("Intenta de nuevo");
  }
}
