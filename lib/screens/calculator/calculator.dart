import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  final amount = TextEditingController();
  final tot = TextEditingController();
  int cal = 0;
  double result = 0;

  String dropdown1 = 'Bigha';
  String dropdown2 = 'Biswa';
  String dropdownvalue = 'Biswa';

  // Conversion rates
  final conversionRates = {
    'Bigha': {
      'Biswa': 20,
      'Hectare': 0.25,
      'Acre': 0.62,
    },
    'Biswa': {
      'Bigha': 0.05,
      'Hectare': 0.012,
      'Acre': 0.03,
    },
    'Hectare': {
      'Bigha': 3.98,
      'Biswa': 79.73,
      'Acre': 2.47,
    },
    'Acre': {
      'Bigha': 1.61,
      'Biswa': 32.26,
      'Hectare': 0.40,
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: 'Calculator'.text.make(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                'Land Area Converter'.text.xl4.make().objectTopCenter().pOnly(top: 10),
                TextFormField(
                  controller: amount,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter value',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ).pOnly(left: 16, right: 16, top: 20),
                DropdownButton(
                  value: dropdown1,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: conversionRates.keys.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdown1 = newValue!;
                    });
                  },
                ).pOnly(top: 5),
                TextFormField(
                  controller: tot,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Converted value',
                    enabled: false,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ).pOnly(left: 16, right: 16, top: 20),
                DropdownButton(
                  value: dropdown2,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: conversionRates.keys.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdown2 = newValue!;
                    });
                  },
                ).pOnly(top: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    convertValue();
                  },
                  child: 'Calculate'.text.make(),
                ).pOnly(top: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void convertValue() {
    final value = double.tryParse(amount.text);
    if (value != null) {
      final conversionRate = conversionRates[dropdown1]![dropdown2];
      if (conversionRate != null) {
        setState(() {
          result = (value * conversionRate).toDouble();
          tot.text = result.toString();
        });
      }
    }
  }

  @override
  void dispose() {
    amount.dispose();
    tot.dispose();
    super.dispose();
  }
}
