import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:personal_expense_app/transaction_list.dart';

import 'models/transaction.dart';
import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // NewTransaction(addNewTransaction),
        // TransactionList(_userTransactions),
      ],
    );
  }
}
