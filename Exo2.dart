import 'dart:io';

void EXO2() {
  stdout.write("Veuillez saisir age : ");
try{
    String? input = stdin.readLineSync();
  int age = int.parse(input ?? "");
  } on FormatException  catch (iba) {
    print("erreu : Le format saisi n'est pas un nombre entier).");
    print("Détail : ${iba.message}");
  } finally {
    print("Fin d'opération");

  }
}
void main() {
  EXO2();
}