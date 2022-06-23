import 'package:expense_tracker/widgets/top_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E X P E N S E  T R A C K E R"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          TopCard(
            balance: "\$10,000",
            income: "\$200",
            expense: "\$100",
          ),
          Expanded(
            child: Container(
              color: Colors.blue[300],
              child: const Center(
                child: Text("Transactions"),
              ),
            ),
          ),
          Container(
            height: 25,
            child: const Center(
              child: Text(
                "Button",
                style: TextStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
