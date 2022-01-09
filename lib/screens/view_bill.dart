import 'dart:io';
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
  final String date;
  late ThemeData _theme;

  BillScreen(
    this.billId,
    this.date,
  );

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
        backgroundColor: _theme.appBarTheme.backgroundColor,
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: true,
          iconTheme: _theme.iconTheme,
          title: Text(
            date == null ? "Bill No. $billId" : date,
            style: _theme.textTheme.headline3,
          ),
          backgroundColor: _theme.appBarTheme.backgroundColor,
        ),
        body: _buildBody(context, billId));
  }

  FutureBuilder<Response<BillPayload>> _buildBody(
      BuildContext context, int id) {
    return FutureBuilder<Response<BillPayload>>(
      future: Provider.of<PostApiService>(context).getBillById(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          final BillPayload? posts = snapshot.data?.body;
          return _buildBillWidget(context, posts!);
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

  Widget _buildBillWidget(BuildContext context, BillPayload bill) {
    final BuiltList<Transaction> transactions =
        bill.transactionResponse.transactions;
    return Container(
        color: _theme.appBarTheme.foregroundColor,
        child: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Table(
              defaultColumnWidth: FlexColumnWidth(3),
              columnWidths: const <int, TableColumnWidth>{
                0: IntrinsicColumnWidth(),
                1: FlexColumnWidth()
              },
              border: TableBorder.all(
                  color: gray1, style: BorderStyle.solid, width: 0.5),
              children: [
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Created Date',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.createdDate!,style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Created by',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.createdBy!,style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Last updated',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.lastUpdatedDate!,style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Updated by',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.lastUpdatedBy!,style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('For client',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.patientName!.trim(), style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('For consultation ',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.consultationId.toString(),style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Total Amount',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.totalAmount.toString(),style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Paid Amount',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.paidAmount.toString(),style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Is active ?',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(
                        bill.isActive.toString(),
                        style: TextStyle(color: bill.isActive! ? colorPrimary : Colors.red),
                      )),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Is Paid ?',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(
                        bill.isPaid.toString(),
                        style: TextStyle(color: bill.isPaid! ? colorPrimary : Colors.red),
                      )),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Client addresses',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('',
                          style: _theme.textTheme.headline3)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Client address',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.address!,style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Client email',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.emailAddress!,style: _theme.textTheme.headline4)),
                ]),
                TableRow(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text('Client phone',
                          style: _theme.textTheme.headline3)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                      child: Text(bill.phoneNumber.toString(), style: _theme.textTheme.headline4)),
                ]),
              ],
            ),
          ),
          Container(
            color: _theme.appBarTheme.backgroundColor,
            margin: EdgeInsets.only(top: 10.0),
            child: Center(
              heightFactor: 3.0,
              child: Text(
                'Bill ${bill.id} Transactions',
                style: _theme.textTheme.headline3,
              ),
            ),
          ),
          transactions.length > 0
              ? _buildBillTransactions(context,
                  transactions.where((it) => !it.isReversed!).toBuiltList())
              : NothingFoundWarning()
        ]));
  }

  ListView _buildBillTransactions(
      BuildContext context, BuiltList<Transaction> transactions) {
    return ListView.builder(
      itemCount: transactions.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(0.0),
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionWidget('bill_trxn_widget',
            transaction: transactions[index]);
      },
    );
  }

  _startAddNewTransaction(BuildContext context) {
    print('No object');
  }
}
