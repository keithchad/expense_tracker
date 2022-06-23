import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expense;

  TopCard({required this.balance, required this.income, required this.expense});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'B A L A N C E',
              style: TextStyle(color: Colors.grey[500], fontSize: 16.0),
            ),
            Text(
              '\$10,000',
              style: TextStyle(color: Colors.grey[800], fontSize: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.arrow_upward),
                    Column(children: [
                      const Text("income"),
                      Text(income),
                    ])
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.arrow_downward),
                    Column(children: [
                      const Text("expense"),
                      Text(expense),
                    ])
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
