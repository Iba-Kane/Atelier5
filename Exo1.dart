void EXO1(){
    try{
        var resultat = 12 ~/ 0;
        print(resultat);
    }catch (iba){
        print("imposible de diviser par zero");

    }
}
void main() {
    EXO1();
}