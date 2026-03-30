
import 'dart:io';

String nameUser(String eingabeName){
  final nameRegex = RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$');
  while (true) {
    print('$eingabeName: ');
    String text = stdin.readLineSync() ?? '';
    text = text.trim();

    if (text.isEmpty) {
      print('Eingabe darf nicht leer sein.');
      continue;
    }

    if (!nameRegex.hasMatch(text)) {
      print('Nur Buchstaben und Leerzeichen erlaubt.');
      continue;
    }

    return text;
  }
}
    
    
int ageUser() {
  while (true) {
    print('Alter: ');
    String wert = stdin.readLineSync() ?? '';
    int? alter = int.tryParse(wert);
    if (alter != null && alter >= 0 && alter <= 130) return alter;
    print('Eingabe Ungültig');
  }
}
    
    
    
String gender () {
  while (true) {
    print('Geschlecht: [1] männlich  [2] weiblich  ');
    String wahl = stdin.readLineSync() ?? '';
    if (wahl == '1') return 'Herr';
    if (wahl == '2') return 'Frau';
    print('Ungültige Eingabe – bitte 1, oder 2 eingeben.');
  }
}





void main() {
  String userName = nameUser('Bitte Vorname Eingeben');
  String userSurname = nameUser('Bitte Nachname Eingeben');
  int age = ageUser();
  String anrede = gender();

  if (age < 40) {
    print('Hallo, $anrede $userName $userSurname!');
  } else {
    int stunde = DateTime.now().hour;
    String tageszeit;
    if (stunde >= 5 && stunde < 12) {
      tageszeit = 'Morgen';
    } else if (stunde >= 12 && stunde < 18) {
      tageszeit = 'Tag';
    } else {
      tageszeit = 'Abend';
    }

    if (anrede.isNotEmpty) {
      print('Guten $tageszeit, $anrede $userSurname!');
    } else {
      print('Guten $tageszeit, $userSurname!');
    }
  }
}