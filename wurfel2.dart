import 'dart:io';
import 'dart:math';

void main() {
  int? zahl;
  while (zahl == null) {
    print('anzahl Wurfel');
    final wert = stdin.readLineSync();
    zahl = int.tryParse(wert ?? '');
    if (zahl == null) {
      print('Eingabe ungültig!');
    }
  }
  final rnd = Random();
  print('Ziel erreicht 2 mal ergiebness 6: $zahl');
  final alleWurfel = <int>[];
  for (var i = 0; i < zahl; i++) {
    final wurf = rnd.nextInt(6) + 1;
    alleWurfel.add(wurf);
    if (wurf == 6 && i > 0) {
      final vorherigerWert = alleWurfel[i-1];
      if (vorherigerWert == 6) {
        break;
      }
    }
  }
  print('Alle Würfel: $alleWurfel');
}
