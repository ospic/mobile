import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';

import '../../utils/util.dart';
import '../../widgets/widget_not_found.dart';

class TabBills extends StatefulWidget {
  @override
  _TabBillsState createState() => _TabBillsState();
}

class _TabBillsState extends State<TabBills> {
  ValueNotifier<bool> _notifier = ValueNotifier(false);
  var isLargeScreen = false;
  late ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return OrientationBuilder(builder: (context, orientation) {
      if (MediaQuery.of(context).size.width > 600) {
        isLargeScreen = true;
      } else {
        isLargeScreen = false;
      }
      return Container(
          color: _theme.appBarTheme.backgroundColor,
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        margin: EdgeInsets.symmetric(horizontal: 3.0),
        decoration: new BoxDecoration(
            color: _theme.appBarTheme.backgroundColor,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
            )),
        child: _currentInstanceBuilder(context),
      ));
    });
  }
  FutureBuilder<int?> _currentInstanceBuilder(BuildContext context){
    return FutureBuilder<int?>(
        future: Utils.getPatientId(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
            return _buildBody(context, snapshot.data!);
          }
          return NothingFoundWarning();
        });
  }
  FutureBuilder<Response<BuiltList<Bill>>> _buildBody(BuildContext context, int patientId) {
    return FutureBuilder<Response<BuiltList<Bill>>>(
      future: Provider.of<PostApiService>(context).getBills(patientId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          final BuiltList<Bill>? bills = snapshot.data?.body;
          selectedValue = bills!.isNotEmpty ?  bills[0].id! : 0;
          return bills.isNotEmpty ? _buildBillsList(context, bills) : NothingFoundWarning();
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

  Widget _buildBillsList(BuildContext context, BuiltList<Bill> bills) {
    return Row(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: bills.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0.0),
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final Bill bill = bills[index];
              return Card(
                color: _theme.appBarTheme.foregroundColor,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor:
                        bill.isPaid! ? colorPrimary : Colors.blue[700],
                        child: Text(
                          bill.id.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: bill.isActive! ? Colors.white : Colors.green),
                        ),
                      ),
                      title: Text(bill.createdDate!,style: _theme.textTheme.headline4),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 5.0,),
                          Text('Bill amount: ${bill.totalAmount}',style: _theme.textTheme.headline4),
                          Text('Paid amount: ${bill.paidAmount}',style: _theme.textTheme.headline4),
                        ],
                      ),
                      onTap: () {
                        if (isLargeScreen) {
                          selectedValue = bill.id!;
                          print(selectedValue);
                          _notifier.value = !_notifier.value;
                        } else {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return BillScreen(bill.id!, bill.createdDate!);
                            },
                          ));
                        }
                      },
                    )),
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                  padding:  EdgeInsets.symmetric(vertical: 0.0),
                  color: Colors.transparent, height: 0);
            },
          ),
        ),

      ],
    );
  }
}
