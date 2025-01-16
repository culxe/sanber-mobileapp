import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  counter--;
                });
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            Text('Nilai Counter: $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

// ANALISIS TERHADAP SETSTATE
// APA KEGUNAAN
/*
Terdapat dua state yang membungkus widget pada aplikas ini.
Stateless, page yang statis dan tidak bisa berubah/tidak bisa berinteraksi.
Stateless ini membungkus homepage secara global, yaitu bagian keseluruhan page pada app

Statefull, berisi widget-widget yang bisa berubah dan dilakukan interaksi 
Statefull, membungkus widget counter page(suatu fitur interaktif di aplikasi), agar bisa berinteraksi dengan page counter atau menggunakan fitur counter terebut. 
*/
