import 'dart:io';

void main1(List argument) {
  final saludo = argument.join(' ');
  if (argument.isNotEmpty) {
    print('Hallo $saludo!');
  } else {
    print('Hallo!');
  }
}

void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    String joined = arguments.first;
    // for (var i = 1; i < arguments.length; i++) {
    //   joined += ' ';
    //   joined += arguments[i];
    // }
    print('Hallo $joined!');
  } else {
    print ('Hallo!');
  }
}