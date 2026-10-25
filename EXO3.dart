void verif(String motpasse) {
 
  if (motpasse.length > 6) {
    
    throw Exception("Le mot de passe doit avoir minimum 6 caractères.");
  }
  print("Mot de passe retenu.");
}
void  Exo3() {
   try {
    print("avec le mot de passe 'iba' :");
    verif("ibakane");
  } catch (iba) {
    print("Erreur capturée : $iba");
  }

}
