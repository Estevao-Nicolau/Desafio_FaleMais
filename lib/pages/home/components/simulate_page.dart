import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SimulatePage extends StatelessWidget {
  const SimulatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Simulate"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: ListView(
            // physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                child: DataTable(columns: const [
                  DataColumn(label: Text('Origem')),
                  DataColumn(label: Text('Destino')),
                  DataColumn(label: Text('Tempo')),
                  DataColumn(label: Text('Plano')),
                  DataColumn(label: Text('Plano Cost')),
                  DataColumn(label: Text('Without Plan cost')),
                ], rows: const [
                  DataRow(cells: [
                    DataCell(Text('011')),
                    DataCell(Text('016')),
                    DataCell(Text('20 min(s)')),
                    DataCell(Text('FaleMais 30')),
                    DataCell(Text('R\$ 0')),
                    DataCell(Text('R\$38')),
                  ])
                ]),
              ),
            ],
          ),
        ));
  }
}