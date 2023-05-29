import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/home.dart';
import '../constants/colors.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

int paginaAtual = 0; // indice da pagina
late PageController pagController; // faz o controle dos slides

@override
void initState() {
  // Inicializqa o pagController
  initState();
  pagController = PageController(initialPage: paginaAtual);
}

class _DataState extends State<Data> {
  int _selectedIndex = 0;
  List<String> listConteudo = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Implemente a ação para ir para a tela correspondente ao item selecionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF93D1FA), // Cor de fundo da página
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dados Mensais',
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        hintText: 'Sua renda mensal',
                        fillColor: Colors.white,
                        filled: true,
                        enabled: false)),
                const SizedBox(height: 5),
                TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'Custo a pagar no final do mês',
                  fillColor: Colors.white,
                  filled: true,
                  enabled: false,
                )),
                const SizedBox(height: 5),
                TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'Dinheiro restante ao final do mês',
                  fillColor: Colors.white,
                  filled: true,
                  enabled: false,
                )),
                const SizedBox(height: 35),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dados Anuais',
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'Media de gastos mensais',
                  fillColor: Colors.white,
                  filled: true,
                  enabled: false,
                )),
                const SizedBox(height: 5),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      hintText: 'Media estimada de gastos anuais',
                      fillColor: Colors.white,
                      filled: true,
                      enabled: false,
                    )),
                const SizedBox(height: 45),
                Container(
                  width: 330,
                  height: 100,
                  color: const Color.fromARGB(255, 226, 226, 226),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ADS'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.edit, color: Colors.white), // ícone branco
          backgroundColor: Colors.green, // Cor do botão
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10), // Ajusta as bordas do botão
          ),
        ));
  }
}
