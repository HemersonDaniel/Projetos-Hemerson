import 'package:flutter/material.dart';

void main() {
  runApp(const MariasApp());
}

class MariasApp extends StatelessWidget {
  const MariasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marias',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6B2C2C)),
      ),
      home: const HomePage(),
    );
  }
}

/// OBS: Os botões abaixo são PLACEHOLDERS para as áreas principais.
/// Nas próximas etapas, cada um abrirá sua respectiva funcionalidade.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marias')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Hello Marias 👋',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            _BigButton(label: 'Agenda', onTap: () => _wip(context, 'Agenda')),
            _BigButton(label: 'Ciclo', onTap: () => _wip(context, 'Ciclo')),
            _BigButton(label: 'Perguntas', onTap: () => _wip(context, 'Perguntas')),
            _BigButton(label: 'Ajuda', onTap: () => _wip(context, 'Ajuda')),
          ],
        ),
      ),
    );
  }

  static void _wip(BuildContext context, String feature) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('$feature: em construção')));
  }
}

class _BigButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _BigButton({required this.label, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(56)),
        child: Text(label),
      ),
    );
  }
}
