
String compress(String uncompressed) {
  var result = '';
  String? currentChar;
  var currentCharCount = 0;

  for (var i = 0; i < uncompressed.length; i++) {
    final char = uncompressed[i]; // más simple que substring

    if (char == currentChar) {
      currentCharCount++;
    } else {
      result += compressPart(currentChar, currentCharCount);
      currentChar = char;
      currentCharCount = 1;
    }
  }

  // ⚠️ importante: añadir el último grupo
  result += compressPart(currentChar, currentCharCount);

  return result;
}

String compressPart(String? char, int count) {
  if (char == null) return '';
  if (count < 1) return '';

  if (count == 1) return char;
  if (count == 2) return '$char$char';

  return '$char$count';
} 

void main(List<String> args) {
  String input = args.isNotEmpty ? args.join(' ') : "aaabbc";
  String result = compress(input);

  print("Entrada: $input");
  print("Salida: $result");
}