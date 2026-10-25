class MotdepasseCourtException implements Exception {
   final String message;
@override
  MotdepasseCourtException(this.message);
    String toString() {
    return "MotdepasseCourtException: $message";
  }
}

void verifMotdepassemodif (String motpasse) {
  if (motpasse.length < 6) {
    throw MotdepasseCourtException("Le mot de passe '$motpasse' est trop court min 6 car).");
  }
   print("Mot de passe modif accepte.");

}
void EXO4() {
 try {
    verifMotdepassemodif("IBA");
  } on MotdepasseCourtException catch (iba){
     print("Erreur modif : ${iba.message}");
  }

}

void main() {
  EXO4();
}