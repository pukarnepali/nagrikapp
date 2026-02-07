import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DrivingLicensePage extends StatefulWidget {
  const DrivingLicensePage({super.key});

  @override
  State<DrivingLicensePage> createState() => _DrivingLicensePageState();
}

class _DrivingLicensePageState extends State<DrivingLicensePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          title: const Text(
            'Driving Licence',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(216, 69, 69, 68),
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Driving Licence'),
              Tab(text: 'Violation Records'),
            ],
          ),
        ),
        body: Column(
          children: [
            _infoBanner(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Image.asset('assets/images/Driving.png'),

                    const SizedBox(height: 80),
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/qr.jpeg'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "SCAN TO VIEW",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ℹ️ Info banner
Widget _infoBanner() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(12),
    color: Colors.blue.shade50,
    child: Row(
      children: const [
        Icon(Icons.info_outline, color: Colors.blue),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            "Below details are displayed as per your record in Department of Transport Management.",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ],
    ),
  );
}
