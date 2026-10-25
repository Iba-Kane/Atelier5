import 'dart:io';

class NombreNegatifException implements Exception {
  final String message;
  NombreNegatifException(this.message);

  @override
  String toString() => message;
}
void EXO5(){
  stdout.write("Entrez nombre : ");

  try {
    String? input = stdin.readLineSync();
    
    if (input == null || input.isEmpty) {
       throw FormatException("Aucune entree.");
    }
    double nbres = double.parse(input);

     if (nbres < 0) {
      throw NombreNegatifException("Le nombre $nbres est negatif");
    }
    print("Le nombre est valide carre  : ${nbres * nbres}");
    }on NombreNegatifException catch (iba) {
      print("Erreur : ${iba.message}");
    }on FormatException catch (iba) {
    print("Erreur : Veuillez entrer un nombre valide.");
  } catch (iba) {
    print("Une erreur inattendue est survenue : $iba");
  } finally {
    print("Fin du programme de vérification.");
  }
}
void main() {
  EXO5();
}    
