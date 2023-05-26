import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/home.dart';
import 'package:flutter_todo_app/screens/data.dart';
import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }
  
  setPaginaAtual(pagina){
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: PageView(
        controller: pc,
        children: [
          Home(),
          Data(),
        ],

        onPageChanged: setPaginaAtual,

      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: paginaAtual,
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.list), label:'Lista de Contas'),
          BottomNavigationBarItem(icon: Icon(Icons.data_exploration), label: 'Dados'),

        ],

       

        onTap: (pagina){

          pc.animateToPage (pagina, duration: Duration(microseconds: 400), 
          curve: Curves.ease,

          );
        },

      ),

    );
  }
}





AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: tdBGColor,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Money Control',
          style: TextStyle(
            color: Colors.green, // Altera a cor do texto para verde
          ),),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/M-logo'), //Colocar a logo
          ),
        ),
      ],
    ),
  );
}