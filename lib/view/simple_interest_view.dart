import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double principal = 0.0;
  double rate = 0.0;
  double time = 0.0;
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Interest',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextFieldBox(
              label: 'Enter Principal Amount',
              onChanged: (value) {
                principal = double.tryParse(value) ?? 0.0;
              },
            ),
            const SizedBox(height: 10),
            _buildTextFieldBox(
              label: 'Enter Rate of Interest(%)',
              onChanged: (value) {
                rate = double.tryParse(value) ?? 0.0;
              },
            ),
            const SizedBox(height: 10),
            _buildTextFieldBox(
              label: 'Enter Time Period (Years)',
              onChanged: (value) {
                time = double.tryParse(value) ?? 0.0;
              },
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Result: $result',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = (principal * rate * time) / 100;
                });
              },
              child: const Text('Calculate Simple Interest'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldBox({
    required String label,
    required Function(String) onChanged,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none, // Removes the default TextField border
        ),
      ),
    );
  }
}
