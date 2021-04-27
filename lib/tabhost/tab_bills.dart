import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
class TabBills extends StatefulWidget {

  @override
  _TabBillsState createState()=>_TabBillsState();
}

class _TabBillsState extends State<TabBills> {
  ValueNotifier<bool> _notifier = ValueNotifier(false);
  var isLargeScreen = false;



  @override
  Widget build(BuildContext context) {

    return OrientationBuilder(
        builder: (context, orientation) {
          if (MediaQuery
              .of(context)
              .size
              .width > 600) {
            isLargeScreen = true;
          } else {
            isLargeScreen = false;
          }
          return Container(
            child: _buildBody(context),
          );
        });
  }


  FutureBuilder<Response<BuiltList<Bill>>> _buildBody(BuildContext context) {
    return FutureBuilder<Response<BuiltList<Bill>>>(
      future: Provider.of<PostApiService>(context).getBills(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final BuiltList<Bill> bills = snapshot.data.body;
          selectedValue = bills[0].id;
          return _buildBillsList(context, bills);
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
          flex: isLargeScreen ? 3 : 10,
          child: ListView.separated(
            itemCount: bills.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0.0),
            physics: const AlwaysScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              final Bill bill = bills[index];
              return  Container(

                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: bill.isPaid ?   colorPrimary : Colors.blue[700],
                      child:  Text(bill.id.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold, color: bill.isActive ? Colors.white : Colors.green),
                      ),
                    ),
                    title: Text(bill.createdDate),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bill amount: ${bill.totalAmount}'),
                        Text('Paid amount: ${bill.paidAmount}'),
                      ],
                    ),
                    onTap: () {
                      if (isLargeScreen) {
                        selectedValue = bill.id;
                        print(selectedValue);
                        _notifier.value = !_notifier.value;
                      } else {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return BillScreen(bill.id,bill.createdDate );
                          },
                        ));
                      }
                    },
                  ));
            },
            separatorBuilder: (context, index){
              return Container(color: Colors.grey, height: 1);
            },),
        ),
        Expanded(
            flex: isLargeScreen ? 7: 0,
            child:ValueListenableBuilder(
                valueListenable: _notifier,
                builder: (BuildContext context, bool quoteReady, Widget child){
                  return isLargeScreen ? BillScreen(selectedValue, ): Container();
                }))
      ],
    );
  }
}