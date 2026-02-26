import 'package:flutter/material.dart';
import 'package:tecsis/dashboard/pages/dashboard_page.dart';
import 'package:tecsis/estoques/pages/estoque_page.dart';
import 'package:tecsis/insumos/pages/insumos_page.dart';
import 'package:tecsis/usuarios/pages/usuarios_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Scaffold(
          body: [
            DashboardPage(),
            InsumosPage(),
            EstoquePage(),
            UsuariosPage(),
          ][_index],
          bottomNavigationBar: NavigationBar(
            selectedIndex: _index,
            onDestinationSelected: (value) {
              setState(() {
                _index = value;
              });
            },
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.dashboard),
                label: 'Dashboard',
              ),
              NavigationDestination(
                icon: Icon(Icons.list_alt),
                label: 'Insumos',
              ),
              NavigationDestination(icon: Icon(Icons.store), label: 'Estoque'),
              NavigationDestination(
                icon: Icon(Icons.person_2_sharp),
                label: 'Usuário',
              ),
            ],
          ),
          appBar: AppBar(
            elevation: 2,
            backgroundColor: Colors.lightGreenAccent,
            centerTitle: true,
            /*             title: TextFormField(
              decoration: InputDecoration(
                hintText: 'Pesquisar',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),   */
            actions: [
              IconButton(
                onPressed: () {
                  debugPrint('Botão de perfil pressionado');
                },
                icon: const Icon(Icons.person_2_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_rounded),
              ),
            ],
            title: Text('Controle de Insumos'),
          ),
        ),
      ),
    );
  }
}
