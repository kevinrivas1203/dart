void main(List<String> arguments){
  if (arguments.isNotEmpty) {
  print('Hallo ${arguments.join(' ')} !');
  }else {
    print("Hallo!");
  };
  // print("Hallo");
}


// void main4(List<String> arguments) {
//   if (arguments.isNotEmpty) {
//     final joined = arguments.join(' ');
//     print('Hallo $joined!');
//   } else {
//     print ('Hallo!');
//   }
// }
