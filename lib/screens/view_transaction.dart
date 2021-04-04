import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/utils.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';

class ViewTransaction extends StatelessWidget {
  final int transactionId;
  final int consultationId;

  ViewTransaction(
      this.consultationId,
      this.transactionId);

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = Utils.isAndroidPlatform()
        ? AppBar(
              title: Text("Transaction No. " + transactionId.toString(), style: TextStyle(fontFamily: 'Batmfa'),),
              backgroundColor: green1
    ) : CupertinoNavigationBar(
           backgroundColor: green1,
            middle: Text("Transaction No. " + transactionId.toString(), style: TextStyle(fontFamily: 'Batmfa'),),
    );

    return Utils.isAndroidPlatform()
        ? Scaffold(appBar: appBar, body: _buildBody(context, consultationId, transactionId))
        : CupertinoPageScaffold(child: _buildBody(context, consultationId, transactionId), navigationBar: appBar);
  }
}

FutureBuilder<Response<Transaction>> _buildBody(BuildContext context, int consultationId, int transactionId) {
  return FutureBuilder<Response<Transaction>>(
    future: Provider.of<PostApiService>(context).getUserConsultationTransactionById(consultationId, transactionId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final Transaction transaction = snapshot.data.body;
        return _buildTransactionWidget(context, transaction);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildTransactionWidget(BuildContext context, Transaction transaction){
  return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Table(
            defaultColumnWidth: FlexColumnWidth(3),
            columnWidths: const <int, TableColumnWidth>{
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth()
            },

            border: TableBorder.all(
                color: gray1, style: BorderStyle.solid, width:0.5 ),
            children: [

              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Date', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(transaction.transactionDate)),
              ]),

              transaction.medicineName==null? TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Service', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(transaction.medicalServiceName.toString() )),
              ]):
              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Medicine', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(transaction.medicineName.toString() )),
              ]),
              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(transaction.amount.toString() + " "+transaction.currencyCode, style: TextStyle(fontWeight: FontWeight.bold),)),
              ]),

              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Department', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(transaction.departmentName + "-["+transaction.departmentId.toString()+" ]")),
              ]),
              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('For consultation ', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(transaction.consultationId.toString())),
              ]),


              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Is reversed ?', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0,left: 5.0),
                    child:Text(transaction.isReversed.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: transaction.isReversed? colorPrimary: Colors.red),)),
              ]),

            ],
          ),
        ),

      ]);

}

ListView _buildtransactionTransactions(BuildContext context, BuiltList<Transaction> transactions) {
  return ListView.builder(
    itemCount: transactions.length,
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.all(0.0),
    physics: ClampingScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return  TransactionWidget('transaction_trxn_widget', transaction: transactions[index]);

    },


  );

}

_startAddNewTransaction(BuildContext context) {
  print('No object');
}