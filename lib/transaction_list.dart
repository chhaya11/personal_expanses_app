import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(now);

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  void addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder:(ctx, index) {
          return Card(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,
                         color: Theme.of(context).primaryColor),
                        
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Text(
                        '\$${transactions[index].amount}',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    
                    
                    Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Text(
                            transactions[index].title,
                            
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Text(
                        formatter.format(DateTime.now()),
                        // DateFormat.formatted;
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
        // children: transactions.map((tx) {           
        // }).toList(),
      ),
    );
  }
}
