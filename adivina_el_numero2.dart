import 'dart:io';

void main(List<String> arguments) {
  const int numeroObjetivo = 68;

  print("¡Bienvenido al juego de adivinar el número!");

  print("Introduce un número entero entre 1 y 100:");
  String numeroIntroducidoRaw = stdin.readLineSync()!;
  int numeroIntroducido = int.parse(numeroIntroducidoRaw);

  bool esCorrecto = false;
  if (numeroIntroducido == numeroObjetivo) {
    esCorrecto = true;
  } else {
    esCorrecto = false;
  }

  if (esCorrecto) {
    print("Felicidades!");
  } else {
    print("Sigue intentando.");
  }
}
