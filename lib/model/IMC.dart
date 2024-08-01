class IMC{

double _peso = 0;
double _altura = 0;


double getPeso() => _peso;
double getAltura() => _altura;

set peso(double peso) =>  _peso = peso;
set altura(double altura) =>  _altura = altura;

calculo(altura,peso){
 double imc = peso / (altura * altura);

    if (imc < 16) {
      return "MAGREZA GRAVE";  
    } else if (imc >= 16 && imc < 17) {
      return "MAGREZA MODERADA";
    } else if (imc >= 17 && imc < 18.5) {
      return "MAGREZA LEVE";
    } else if (imc >= 18.5 && imc < 25) {
      return "SAUDÁVEL";
    } else if (imc >= 25 && imc < 30) {
      return "SOBREPESO";
    } else if (imc >= 30 && imc < 35) {
      return "OBESIDADE GRAU I";
    } else if (imc >= 35 && imc < 40) {
      return "OBESIDADE GRAU II";
    } else {
      return "OBESIDADE GRAU III";
    }

}




}