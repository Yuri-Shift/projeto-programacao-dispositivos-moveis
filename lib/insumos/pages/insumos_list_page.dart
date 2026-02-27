import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tecsis/insumos/models/insumos.dart';
import 'package:tecsis/insumos/mvvm/insumos_view_model.dart';
import 'package:tecsis/insumos/servicos/insumos_add_page.dart';

class InsumosListPage extends StatelessWidget {
  const InsumosListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => InsumosAddPage()));
        },
      ),
      body: Consumer<InsumosViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.insumos.isEmpty) {
            return Center(
              child: Container(
                child: Text('Não existe registro de banco de dados'),
              ),
            );
          } else {
            return Container(color: Colors.blue);
          }
        },
      ),
    );
  }
}
