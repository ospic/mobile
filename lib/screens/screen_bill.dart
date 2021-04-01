import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/bill_payload.dart';
import 'package:mobile/model/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/utils.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';

class BillScreen extends StatelessWidget {
  final int billId;

  BillScreen(this.billId);

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = Utils.isAndroidPlatform()
        ? AppBar(
            title: Text(
              "Bill No. " + billId.toString(),
              style: TextStyle(fontFamily: 'Batmfa'),
            ),
            backgroundColor: green1,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => _startAddNewTransaction(context),
              )
            ],
          )
        : CupertinoNavigationBar(
            backgroundColor: green1,
            middle: Text(
              'Group no.' /** + billId.id.toString()**/,
              style: TextStyle(fontFamily: 'Batmfa'),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  child: Icon(CupertinoIcons.add),
                  onTap: () => _startAddNewTransaction(context),
                )
              ],
            ),
          );

    return Utils.isAndroidPlatform()
        ? Scaffold(appBar: appBar, body: _buildBody(context, billId))
        : CupertinoPageScaffold(
            child: _buildBody(context, billId), navigationBar: appBar);
  }
}

FutureBuilder<Response<BillPayload>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<BillPayload>>(
    future: Provider.of<PostApiService>(context).getBillById(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final BillPayload posts = snapshot.data.body;
        return _buildBillWidget(context, posts);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildBillWidget(BuildContext context, BillPayload bill){
   return ListView(
      children: <Widget>[
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      children: <Widget>[
      ListTile(
      title: Text('Created Date:'),
      subtitle: Text(bill.createdDate + " By: " + bill.createdBy),
      ),
      ListTile(
      title: Text('Last updated'),
      subtitle: Text(bill.lastUpdatedDate + " By: " + bill.lastUpdatedBy),
      ),
      ListTile(
      title: Text('Total Amount'),
      subtitle: Text(bill.transactionResponse.totalAmount.toString()),
      ),
      ListTile(
      isThreeLine: true,
      title: Text('Patient '),
      subtitle:
      Text(bill.patientName + "[" + bill.patientId.toString() + "]"),
      ),
      ListTile(
      title: Text('Phone'),
      subtitle: Text(bill.phoneNumber),
      ),
      ListTile(
      title: Text('Address: '),
      subtitle: Text(bill.address),
      ),
       ListTile(
         title: Text("Transactions", style: TextStyle(fontWeight: FontWeight.bold, color: colorAccent, fontSize: 18.0),),
       ),
        _buildBillTransactions(context, bill.transactionResponse.transactions),
      ],
      ),

      )
      ]);

}

ListView _buildBillTransactions(BuildContext context, BuiltList<Transaction> transactions) {
  return ListView.builder(
      itemCount: transactions.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8.0),
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
            color: Colors.green,
            elevation: 1,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
                decoration:
                BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: TransactionWidget("transaction_widget",transaction:transactions[index])
            ));
      });

}

_startAddNewTransaction(BuildContext context) {
  print('No object');
}
