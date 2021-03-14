import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/bill.dart';
import 'package:mobile/model/patient.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:developer';

class TabBills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context)
    );
  }
}
FutureBuilder<Response<BuiltList<Bill>>> _buildBody(BuildContext context) {
  return FutureBuilder<Response<BuiltList<Bill>>>(
    future: Provider.of<PostApiService>(context).getBills(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        log(snapshot.toString());
        final BuiltList<Bill> bills = snapshot.data.body;
        return _buildBills(context, bills.reversed.toBuiltList());
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}
ListView _buildBills(BuildContext context, BuiltList<Bill> bills) {
  return ListView.builder(
      itemCount: bills.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8.0),
      physics: const AlwaysScrollableScrollPhysics(),
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
                child: BillWidget(
                  'group_widget',
                  bill: bills[index]
        )));
      });
}
