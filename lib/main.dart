import 'package:flutter/material.dart';
import 'transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expanses App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Joggers',
      amount: 89.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                elevation: 5.0,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'chart of page',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: transaction.map((tx) {
                return Card(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   margin: EdgeInsets.symmetric(
                          //       vertical: 10, horizontal: 5),
                          //   child: Text(
                          //     tx.id.toString(),
                          //     style: TextStyle(fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                           Row(
                            children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: Text(
                              tx.title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),

                        ],
                           ),
                         
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.purple),
                                ),
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Text(
                                  '\$${tx.amount}',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Text(
                                  DateFormat.format(tx.date),
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
