import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ServiceAndCostsTab extends StatelessWidget {
  final int consultationId;
  ServiceAndCostsTab(this.consultationId);
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildBody(context, consultationId)
    );
  }
}

FutureBuilder<Response<TransactionResponse>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<TransactionResponse>>(
    future: Provider.of<PostApiService>(context).getConsultationServiceAndCosts(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final TransactionResponse response = snapshot.data.body;
        return _buildConsultationWidget(context,  response);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildConsultationWidget(BuildContext context, TransactionResponse response){
  final colors = [ Colors.blue, Colors.green, Colors.yellowAccent, Colors.red, Colors.indigo];
  final BuiltList<Transaction> transactions = response.transactions;
  return ListView.builder(
    itemCount: transactions.length,
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.all(0.0),
    physics: ClampingScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return  TransactionWidget('service_transaction_widget', transaction: transactions[index]);

    },


  );
  /**return  ListView(children: <Widget>[
    Center(
        child: Text(
          'Service and costs',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
    DataTable(
      sortAscending: true,
      headingRowColor: MaterialStateColor.resolveWith((states) => colorPrimary),
      columns: [
        DataColumn(label: Text(
            'TID',
            style: TextStyle( fontWeight: FontWeight.bold)
        )),
        DataColumn(label: Text(
            'Service',
            style: TextStyle(fontWeight: FontWeight.bold)
        )),
        DataColumn(label: Text(
            'Amount',
            style: TextStyle( fontWeight: FontWeight.bold)
        )),
        DataColumn(label: Text(
            'Date',
            style: TextStyle( fontWeight: FontWeight.bold)
        )),
       /** DataColumn(label: Text(
            'Department',
            style: TextStyle( fontWeight: FontWeight.bold)
        )),**/

      ],
      rows: transactions.map((transaction) =>
        DataRow(
          cells: [
          DataCell(Text(transaction.id.toString())),
          DataCell(Text(transaction.medicalServiceName == null ? transaction.medicineName.toString() : transaction.medicalServiceName.toString())),
          DataCell(Text(transaction.amount.toString())),
          DataCell(Text(transaction.transactionDate)),
          /**DataCell(Text(transaction.departmentName)),**/
      ],
    )).toList()),
  ]);
  **/
}