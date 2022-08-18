import 'dart:math';

import 'package:falemais/pages/home/components/simulate_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  // Origem
  final dropValueOrigin = ValueNotifier('');
  final dropOpcoesOrigin = ['011', '016', '017', '018'];
  // Destino
  final dropOpcoesDestiny = ['011', '016', '017', '018'];
  final dropValueDestiny = ValueNotifier('');
  // Plano FaleMais
  final dropOpcoesPlan = ['FaleMais 30', 'Outros Plan'];
  final dropValuePlan = ValueNotifier('');
  // Tempo de ligação
  final dropOpcoesTime = ['20', '80', '100', '200'];
  final dropValueTime = ValueNotifier('');

  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 40,
            ),
            children: [
              // Titulo
              TextSpan(
                text: 'Telzir',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white30,
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 120),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Campos Origem
                        ValueListenableBuilder(
                            valueListenable: dropValueOrigin,
                            builder: (BuildContext context, String value, _) {
                              return SizedBox(
                                width: 150,
                                child: DropdownButtonFormField<String>(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                      label: const Text('Origem DDD'),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  icon:
                                      const Icon(Icons.phone_forwarded_rounded),
                                  hint: const Text('Origem'),
                                  value: (value.isEmpty) ? null : value,
                                  onChanged: (choice) =>
                                      dropValueOrigin.value = choice.toString(),
                                  items: dropOpcoesOrigin
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                ),
                              );
                            }),
                        // Campos Destino
                        ValueListenableBuilder(
                            valueListenable: dropValueDestiny,
                            builder: (BuildContext context, String value, _) {
                              return SizedBox(
                                width: 150,
                                child: DropdownButtonFormField<String>(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                      label: const Text('Destino DDD'),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  icon: const Icon(Icons.phone_callback_sharp),
                                  hint: const Text('Destino'),
                                  value: (value.isEmpty) ? null : value,
                                  onChanged: (choice) => dropValueDestiny
                                      .value = choice.toString(),
                                  items: dropOpcoesDestiny
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                ),
                              );
                            }),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(17)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Campos Tempo
                        ValueListenableBuilder(
                            valueListenable: dropValueTime,
                            builder: (BuildContext context, String value, _) {
                              return SizedBox(
                                width: 150,
                                child: DropdownButtonFormField<String>(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                      label: const Text('Tempo'),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  icon:
                                      const Icon(Icons.phone_forwarded_rounded),
                                  hint: const Text('Tempo'),
                                  value: (value.isEmpty) ? null : value,
                                  onChanged: (choice) =>
                                      dropValueTime.value = choice.toString(),
                                  items: dropOpcoesTime
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                ),
                              );
                            }),
                        // Campos Plano
                        ValueListenableBuilder(
                            valueListenable: dropValuePlan,
                            builder: (BuildContext context, String value, _) {
                              return SizedBox(
                                width: 150,
                                child: DropdownButtonFormField<String>(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                      label: const Text('Plano'),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  icon: const Icon(Icons.phone_callback_sharp),
                                  hint: const Text('Plano'),
                                  value: (value.isEmpty) ? null : value,
                                  onChanged: (choice) =>
                                      dropValuePlan.value = choice.toString(),
                                  items: dropOpcoesPlan
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                ),
                              );
                            }),
                      ],
                    ),
                    // Botão Simular
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton.icon(
                          label: Text('Simular'),
                          icon: Icon(Icons.phone_in_talk_rounded),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SimulatePage()),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
