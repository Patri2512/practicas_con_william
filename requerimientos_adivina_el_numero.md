### Historia de usuario — GUESS-001: “Adivinar el número fijo”

**Como** persona que ejecuta un programa de consola  
**Quiero** que la aplicación me pida adivinar un número previamente definido en el código  
**Para** divertirme comprobando cuántos intentos necesito para acertar  

---

#### Detalles funcionales

| Momento | Texto que **debe** mostrarse exactamente | Descripción |
|---------|------------------------------------------|-------------|
| Inicio del programa | `¡Bienvenido al juego de adivinar el número!` | Mensaje de bienvenida. |
| Solicitud inicial de entrada | `Introduce un número entero entre 1 y 100:` | Petición del primer intento (el rango puede ajustarse, pero la cadena es fija). |
| Entrada no numérica | `Entrada no válida. Por favor ingresa un número entero.` | Se muestra **únicamente** cuando el usuario escribe algo que no sea un entero. Después vuelve a mostrar la misma solicitud de entrada. |
| Número demasiado alto | `Demasiado alto. Intenta de nuevo:` | Se muestra cada vez que el intento es mayor que el número objetivo. |
| Número demasiado bajo | `Demasiado bajo. Intenta de nuevo:` | Se muestra cada vez que el intento es menor que el número objetivo. |
| Número correcto | `¡Felicidades! Adivinaste el número en <N> intentos.` | `<N>` se reemplaza por la cantidad real de intentos. |
| Pregunta para seguir jugando | `¿Deseas jugar otra vez? (s/n):` | Solo se muestra después de acertar. |
| Despedida | `Gracias por jugar. ¡Hasta la próxima!` | Se imprime cuando el usuario responde “n” (o cualquier cosa distinta de “s”) a la pregunta anterior. |

---

#### Criterios de aceptación

1. **Número fijo en código**  
   * El valor del número a adivinar está declarado en el código (por ejemplo, `const int numeroObjetivo = 42;`).  
   * No se genera de forma aleatoria.

2. **Flujo de interacción**  
   * Al iniciar, se muestra exactamente el mensaje de bienvenida y la solicitud de entrada.  
   * El programa acepta entradas sucesivas hasta que el usuario acierte.  
   * Tras cada intento incorrecto muestra la pista correspondiente (“Demasiado alto” o “Demasiado bajo”) seguida de `Intenta de nuevo:` en la misma línea.  
   * Al acertar, muestra el mensaje de felicitación con el total de intentos.

3. **Validación de entradas**  
   * Cualquier entrada que no sea un entero provoca el mensaje de *Entrada no válida* y vuelve a solicitar el número.  
   * No cuenta como intento.

4. **Reinicio opcional**  
   * Después de acertar, el programa pregunta si desea volver a jugar.  
   * Si el usuario responde `s` o `S`, el juego reinicia (mismos mensajes, mismo número objetivo).  
   * Para cualquier otra respuesta, se muestra la despedida y el programa termina con código de salida 0.

5. **Código en Dart**  
   * El programa es un archivo ejecutable de consola (`dart run`), sin dependencias externas.  
   * Usa solo `dart:io` para leer la entrada del usuario y `print()` para las salidas mostradas arriba.

Con esta historia y las cadenas exactas tendrás criterios claros para implementar y probar tu pequeño juego de adivinanzas en Dart.

Happy Coding! 🚀
