import 'package:flutter/material.dart';

class TravelBagDetailsScreen extends StatefulWidget {
  const TravelBagDetailsScreen({Key? key}) : super(key: key);

  @override
  _TravelBagDetailsScreenState createState() => _TravelBagDetailsScreenState();
}

class _TravelBagDetailsScreenState extends State<TravelBagDetailsScreen> {
  TextEditingController weightController = TextEditingController();
  bool isOverweight = false;
  String resultMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Bag Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Bag Weight (kg)',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                checkOverweight();
                displayResultMessage();
              },
              child: const Text('Check Weight'),
            ),
            const SizedBox(height: 20),
            Text(
              resultMessage,
              style: TextStyle(
                color: isOverweight ? Colors.red : Colors.green,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkOverweight() {
    double bagWeight = double.tryParse(weightController.text) ?? 0.0;
    const maxWeight = 34.0; // Max allowed weight for the bag

    setState(() {
      isOverweight = bagWeight > maxWeight;
    });
  }

  void displayResultMessage() {
    setState(() {
      resultMessage = isOverweight
          ? 'Overweight Bag! Remove items.'
          : 'Bag is within the limit.';
    });
  }
}
