import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ServiceAndCostsTab extends StatelessWidget {
  final int consultationId;
  late ThemeData _theme;
  ServiceAndCostsTab(this.consultationId);
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: _theme.scaffoldBackgroundColor,
        body: _buildBody(context, consultationId)
    );
  }


FutureBuilder<Response<TransactionResponse>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<TransactionResponse>>(
    future: Provider.of<PostApiService>(context).getConsultationServiceAndCosts(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
        final TransactionResponse? response = snapshot.data?.body;
        return response!.transactions.length > 0? _buildConsultationWidget(context,  response) : NothingFoundWarning();
      } else if(snapshot.hasError){
        return SomethingWrongHasHappened();
      }  else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

Widget _buildConsultationWidget(BuildContext context, TransactionResponse response){
  final BuiltList<Transaction> transactions = response.transactions;
  return Container(
      child:  ListView.separated(
    itemCount: transactions.length,
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.all(0.0),
    physics: ClampingScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return  TransactionWidget('service_transaction_widget', transaction: transactions[index]);

    }, 
        separatorBuilder: (context, index){
          return  Container(
              padding:  EdgeInsets.all(0.0),
              color: _theme.primaryColor, height: 1);
        },
  ));
}}