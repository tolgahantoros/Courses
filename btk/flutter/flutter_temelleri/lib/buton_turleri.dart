import 'package:flutter/material.dart';

class ButonTurleri extends StatefulWidget {
  const ButonTurleri({super.key});

  @override
  State<ButonTurleri> createState() => _ButonTurleriState();
}

class _ButonTurleriState extends State<ButonTurleri> {
  String _dropdownValue = 'Birinci';
  String _popupValue = 'Seçim yok';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buton Türleri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('ElevatedButton'),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {},
                child: const Text('TextButton'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {},
                child: const Text('OutlinedButton'),
              ),
              const SizedBox(height: 12),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up),
                tooltip: 'IconButton',
              ),
              const SizedBox(height: 12),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
                tooltip: 'FloatingActionButton',
                heroTag: 'fab1',
              ),
              const SizedBox(height: 24),
              DropdownButton<String>(
                value: _dropdownValue,
                items:
                    <String>['Birinci', 'İkinci', 'Üçüncü'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _dropdownValue = newValue!;
                  });
                },
              ),
              const SizedBox(height: 24),
              PopupMenuButton<String>(
                onSelected: (String value) {
                  setState(() {
                    _popupValue = value;
                  });
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem(
                    value: 'Birinci',
                    child: Text('Birinci Seçenek'),
                  ),
                  const PopupMenuItem(
                    value: 'İkinci',
                    child: Text('İkinci Seçenek'),
                  ),
                ],
                child: ElevatedButton(
                  onPressed: null,
                  child: const Text('PopupMenuButton'),
                ),
              ),
              const SizedBox(height: 12),
              Text('Popup seçimi: $_popupValue'),
            ],
          ),
        ),
      ),
    );
  }
}
