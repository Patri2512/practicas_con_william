import 'dart:io';

// Esta es la version mas reciente
void main(List<String> arguments) {
  const int numeroObjetivo = 68;

  print("¡Bienvenido al juego de adivinar el número!");

  print("Introduce un número entero entre 1 y 100:");
  String numeroIntroducidoRaw = stdin.readLineSync()!;
  int numeroIntroducido = int.parse(numeroIntroducidoRaw);

  if (numeroIntroducido == numeroObjetivo) {
    print("Felicidades!");
  } else {
    print("Sigue intentando.");
  }
}
