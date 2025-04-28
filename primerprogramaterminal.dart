void main(List<String> argumentos) {
  String anioDeNacimiento = argumentos[0];
  String anioActual = argumentos[1];
  int anioDeNacimientoParceado = int.parse(anioDeNacimiento);
  int anioActualParceado = int.parse(anioActual);
  int edadResultado = anioActualParceado - anioDeNacimientoParceado;
  bool esMayorDeEdad = false;

  if (edadResultado >= 18) {
    esMayorDeEdad = true;
  } else {
    esMayorDeEdad = false;
  }

  print("Hola, soy un programa que calcula tu edad.");
  print(
      "Si naciste en el año $anioDeNacimiento y el año actual es $anioActual, entonces tu edad es: $edadResultado");
  if (esMayorDeEdad) {
    print("como eres mayor de edad, estas bienvenido al club, pasa adelante!");
  } else {
    print("fuero de aqui menol");
  }
}
