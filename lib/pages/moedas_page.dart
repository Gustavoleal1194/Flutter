import 'package:flutter/material.dart';
import 'package:testeflutter/repositories/moeda_repository.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Cripto Moedas'),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemBuilder: (BuildContext context, int moeda) {
            return ListTile(
              leading: Image.asset(tabela[moeda].icone),
              title: Text(tabela[moeda].nome),
              trailing: Text(tabela[moeda].preco.toString()),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: tabela.length,
        ));
  }
}
