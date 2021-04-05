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
              return  Container(

                  child: ListTile(
                    dense: true,
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: bills[index].isPaid ?   Colors.green[100]:Colors.red[700],
                      child:  Text(bills[index].id.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold, color: bills[index].isActive ? Colors.white : Colors.green),
                      ),
                    ),
                    title: Text(bills[index].createdDate),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bill amount: ${bills[index].totalAmount}'),
                        Text('Paid amount: ${bills[index].paidAmount}'),
                      ],
                    ),
                    onTap: () {
                      if (isLargeScreen) {
                        selectedValue = bills[index].id;
                        print(selectedValue);
                        _notifier.value = !_notifier.value;
                      } else {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return BillScreen(selectedValue);
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
                  return isLargeScreen ? BillScreen(selectedValue): Container();
                }))
      ],
    );
  }
}