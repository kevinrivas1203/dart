import 'dart:math'; // Libreria que coge numeros aleatorios [1]
import 'dart:io';   // Para stdin y stdout  se puede interactuar que el usuario y ver lo que escribe[1, 4]

void main() {
  int? maxThrows;

  // 1. Entrada y Validación (Gültigkeitsprüfung) [1]
  while (maxThrows == null || maxThrows <= 0) {
    stdout.write('Introduce el límite de lanzamientos (número positivo): ');
    String? input = stdin.readLineSync(); // Leer entrada [1]
    
    // Usamos tryParse para evitar que el programa falle si no es un número [1]
    maxThrows = int.tryParse(input ?? '');
    
    if (maxThrows == null || maxThrows <= 0) {
      print('Error: Debes introducir un número entero válido.');
    }
  }

  // 2. Configuración inicial [2]
  final random = Random();
  final List<int> history = []; // Lista para almacenar los resultados [2]
  bool doubleSixFound = false;

  // 3. Lógica del bucle (While-Schleife) [1, 2]
  while (history.length < maxThrows && !doubleSixFound) {
    // Generar número de 1 a 6 [1]
    int currentRoll = random.nextInt(6) + 1;
    history.add(currentRoll);

    // Comprobar si los dos últimos son seis
    if (history.length >= 2) {
      if (history[history.length - 1] == 6 && history[history.length - 2] == 6) {
        doubleSixFound = true;
      }
    }
  }

  // 4. Resultados finales [2]
  if (doubleSixFound) {
    print('¡Se han sacado dos 6 seguidos!');
    print('Se necesitaron ${history.length} lanzamientos.');
  } else {
    print('Limit erreicht (Límite alcanzado).');
  }

  // Mostrar la lista completa [2]
  print('Resultados: $history');
}