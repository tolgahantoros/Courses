import 'package:flutter/material.dart';

void main() {
  runApp(const KutularUygulamasi());
}

class KutularUygulamasi extends StatelessWidget {
  const KutularUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded & Flexible Örneği',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kutu Düzeni - Expanded & Flexible'),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Expanded ile dikey kutular
              Expanded(
                flex: 2,
                child: buildDikeyKutular(),
              ),

              const SizedBox(height: 20),

              // Flexible ile yatay kutular
              Flexible(
                flex: 1,
                child: buildYatayKutular(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDikeyKutular() {
    return Column(
      children: [
        // Expanded: boşlukların paylaştırılması
        Expanded(
          flex: 3,
          child: buildKutu(
            renk: Colors.redAccent,
            text: 'Expanded Dikey Kutu 1',
            margin: const EdgeInsets.only(bottom: 12),
          ),
        ),
        Expanded(
          flex: 2,
          child: buildKutu(
            renk: Colors.orange,
            text: 'Expanded Dikey Kutu 2',
            margin: const EdgeInsets.only(bottom: 12),
          ),
        ),
      ],
    );
  }

  Widget buildYatayKutular() {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: buildKutu(
            renk: Colors.green,
            text: 'Flexible Kutu A',
            margin: const EdgeInsets.only(right: 8),
          ),
        ),
        Flexible(
          flex: 2,
          child: buildKutu(
            renk: Colors.blue,
            text: 'Flexible Kutu B',
            margin: const EdgeInsets.only(right: 8),
          ),
        ),
        Flexible(
          flex: 1,
          child: buildKutu(
            renk: Colors.purple,
            text: 'Flexible Kutu C',
          ),
        ),
      ],
    );
  }

  Widget buildKutu({
    required Color renk,
    required String text,
    EdgeInsetsGeometry? margin,
  }) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: renk,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
