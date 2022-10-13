import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Primjer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/',
      routes: {
        '/': (context) => const PrviRoute(),
        '/drugiroute': (context) => const DrugiRoute(),
      },
    ),
  );
}

class PrviRoute extends StatelessWidget {
  const PrviRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prvi Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Push'),
          onPressed: () {
            Navigator.pushNamed(context, '/drugiroute');
          },
        ),
      ),
    );
  }
}

class DrugiRoute extends StatelessWidget {
  const DrugiRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drugi Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Pop'),
        ),
      ),
    );
  }
}
