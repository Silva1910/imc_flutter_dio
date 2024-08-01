import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imc_application/model/IMC.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({super.key});

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  var alturaController = TextEditingController(text: "");
  var pesoController = TextEditingController(text: "");
   String _resultado = "";
  
void _calcularIMC() {
    double? altura = double.tryParse(alturaController.text);
    double? peso = double.tryParse(pesoController.text);

    if (altura != null && peso != null) {
      IMC imcModel = IMC();
      imcModel.altura = altura;
      imcModel.peso = peso;
      setState(() {
        _resultado = imcModel.calculo(altura, peso);
      });
    } else {
      setState(() {
        _resultado = "Por favor, insira valores válidos.";
      });
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text("Calculadora de IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "SEJA BEM VINDO",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const Text(
                  "Digite sua altura",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: alturaController,
                    style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: const InputDecoration(
                      hintText: "Altura",
                      hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  "Digite seu peso",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: pesoController,
                    style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: const InputDecoration(
                      hintText: "Peso",
                      hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ],
            ),
             
           const SizedBox(height: 20),
           ElevatedButton(onPressed: _calcularIMC,
            child: const Text("Calcular IMC"),
            ),
            const SizedBox(height: 20),
            Text(_resultado, style: TextStyle(color: Colors.yellow, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
