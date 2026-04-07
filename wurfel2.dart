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

import 'dart:io';


String compress(String input) {
  String ergebnis = '';
  String aktuellerBuchstabe = input[0];
  int anzahl = 1;

  for (int i = 1; i < input.length; i++) {
    if (input[i] == aktuellerBuchstabe) {
      anzahl ++;
    } else {
      if (anzahl >= 3) {
        ergebnis += '$aktuellerBuchstabe$anzahl';
      } else {
        ergebnis += aktuellerBuchstabe * anzahl;
      }
      aktuellerBuchstabe = input[i];
      anzahl = 1;
    }
  } 
    if (anzahl >= 3) {
        ergebnis += '$aktuellerBuchstabe$anzahl';
      } else {
        ergebnis += aktuellerBuchstabe * anzahl;
      }
      return ergebnis;
}

void main(List<String>args) {
  if (args.isEmpty) {
    print('Bite einen String eingeben: ');
    String input = stdin.readLineSync() ?? '';
    print(compress(input));
  } else {
    String input = args[0];
    print(compress(input));
  }
}