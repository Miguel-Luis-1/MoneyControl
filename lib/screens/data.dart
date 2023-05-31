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
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'SUA RENDA MENSAL',
                          border: InputBorder.none)),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'CUSTO A PAGAR NO FINAL DO MÊS',
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'CUSTO A PAGAR NO FINAL DO MÊS',
                        border: InputBorder.none,
                        enabled: false),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      ('OK'),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: tdBlue,
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                    width: 330,
                    height: 80,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Faça seus calculo para ter ideia de como anda a sua carteira '),
                      ],
                    ),
                    padding: const EdgeInsets.all(20)),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
