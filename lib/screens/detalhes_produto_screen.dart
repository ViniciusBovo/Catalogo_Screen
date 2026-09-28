import 'package:flutter/material.dart';
import '../models/produto.dart';

class DetalhesProdutoScreen extends StatelessWidget {
  final Produto produto;

  const DetalhesProdutoScreen({
    super.key,
    required this.produto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Produto'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 56,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Text(produto.icone, style: const TextStyle(fontSize: 48)),
              ),
              const SizedBox(height: 24),
              Text(
                produto.nome,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Categoria: ${produto.categoria}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Text(
                'R\$ ${produto.preco.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Código: ${produto.id}',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Voltar ao catálogo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}