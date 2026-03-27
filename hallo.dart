void main3(List<String> arguments){
  if (arguments.isEmpty) {
    print ('Hallo!');
  } else  {
    print('Hallo ${arguments[0]}!');
    }
}

void main2(List<String> arguments) {
  if (arguments.isNotEmpty) {
    print('Hallo ${arguments[0]}!');
  } else {
    print ('Hallo!');
  }
}

void main4(List<String> arguments) {
  if (arguments.isNotEmpty) {
    final joined = arguments.join(' ');
    print('Hallo $joined!');
  } else {
    print ('Hallo!');
  }
}

void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    String joined = arguments.first;
    for (var i = 1; i < arguments.length; i++) {
      joined += ' ';
      joined += arguments[i];
    }
    print('Hallo $joined!');
  } else {
    print ('Hallo!');
  }
}


// dart run hello.dart Welt
// ['Welt']

// dart run hello.dart "Kevin Rivas"
// ['Kevin Rivas']

// dart run hello.dart Kevin Rivas
// ['Kevin', 'Rivas']

// dart run hello.dart Kevin Rivas Vega
// ['Kevin', 'Rivas', 'Vega']