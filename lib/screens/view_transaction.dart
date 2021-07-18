import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/utils.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';

class ViewTransaction extends StatelessWidget {
  final int transactionId;
  final int consultationId;

  ViewTransaction(this.consultationId, this.transactionId);

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Constants.clr_blue),
        title: Text(
          "Transaction " ,
          style: TextStyle(fontFamily: 'Batmfa', color: Constants.clr_blue),
        ),
        backgroundColor: Constants.clr_light_blue);

    return Scaffold(
        appBar: appBar,
        body: _buildBody(context, consultationId, transactionId));
  }
}

FutureBuilder<Response<Transaction>> _buildBody(
    BuildContext context, int consultationId, int transactionId) {
  return FutureBuilder<Response<Transaction>>(
    future: Provider.of<PostApiService>(context)
        .getUserConsultationTransactionById(consultationId, transactionId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done &&
          snapshot.hasData) {
        final Transaction? transaction = snapshot.data?.body;
        return _buildViewTransaction(context, transaction);
      } else if (snapshot.hasError) {
        return SomethingWrongHasHappened();
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

Widget _buildViewTransaction(BuildContext context, Transaction? transaction) {
  final _borderRadius = 10.0;
  return Card(
    shadowColor: Constants.clr_blue,
    margin: EdgeInsets.all(5.0),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_borderRadius)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 70.0,
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
              color: Constants.clr_blue,
              border: Border.all(
                color: Constants.clr_blue,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_borderRadius),
                  topRight: Radius.circular(_borderRadius))),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.ac_unit,
                color: Constants.clr_blue,
              ),
            ),
            title: Text(
              transaction!.medicineName.isEmpty ? 'Service' : 'Medicine',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text('${transaction.medicineName.isEmpty ? transaction.medicalServiceName : transaction.medicineName}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0)),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Date',
              ),
              SizedBox(
                height: 9.0,
              ),
              Text(
                '${transaction.transactionDate}',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),

            ],
          ),
        ),
        Divider(),
        _buildTransactionWidget(context, transaction)
      ],
    ),
  );
}

Widget _buildTransactionWidget(BuildContext context, Transaction? transaction) {
  return Padding(padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
  child:  Table(
    defaultColumnWidth: FlexColumnWidth(3),
    columnWidths: const <int, TableColumnWidth>{
      0: IntrinsicColumnWidth(),
      1: FlexColumnWidth()
    },
    border:
    TableBorder.all(color: gray1, style: BorderStyle.solid, width: 0.5),
    children: [
      TableRow(children: [
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child:
            Text('Date', style: TextStyle(fontWeight: FontWeight.bold))),
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text(transaction!.transactionDate.toString())),
      ]),
      transaction.medicineName == null
          ? TableRow(children: [
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text('Service',
                style: TextStyle(fontWeight: FontWeight.bold))),
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text(transaction.medicalServiceName.toString())),
      ])
          : TableRow(children: [
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text('Medicine',
                style: TextStyle(fontWeight: FontWeight.bold))),
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text(transaction.medicineName.toString())),
      ]),
      TableRow(children: [
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child:
            Text('Price', style: TextStyle(fontWeight: FontWeight.bold))),
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text(
              transaction.amount.toString() + " " + transaction.currencyCode!,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ]),
      TableRow(children: [
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text('Department',
                style: TextStyle(fontWeight: FontWeight.bold))),
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text(transaction.departmentName! +
                "-[" +
                transaction.departmentId.toString() +
                " ]")),
      ]),
      TableRow(children: [
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text('For consultation ',
                style: TextStyle(fontWeight: FontWeight.bold))),
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text(transaction.consultationId.toString())),
      ]),
      TableRow(children: [
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text('Is reversed ?',
                style: TextStyle(fontWeight: FontWeight.bold))),
        Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
            child: Text(
              transaction.isReversed.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: transaction.isReversed! ? colorPrimary : Colors.red),
            )),
      ]),
    ],
  ),);
}
