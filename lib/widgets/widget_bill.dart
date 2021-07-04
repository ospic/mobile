import 'package:mobile/model/bill.dart';
import 'package:mobile/screens/view_bill.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BillWidget extends StatefulWidget {
  final Bill bill;

  const BillWidget(String s, {required this.bill});

  @override
  State<StatefulWidget> createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Material(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 4,
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.only(right: 8.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(width: 1.0, color: gray2))),
                  child: new CircleAvatar(
                    radius: 30,
                    backgroundColor: widget.bill.isPaid! ? gray1 : colorAccent,
                    child: new Icon(
                      MdiIcons.currencyUsd,
                      color: green1,
                    ),
                  ),
                ),
                title: Text(
                  widget.bill.createdDate ?? '',
                  style: TextStyle(color: gray3),
                ),
                subtitle: Text('Total amount ${widget.bill.totalAmount==null? '0':widget.bill.totalAmount} \n Paid amount ${widget.bill.paidAmount==null? '0':widget.bill.totalAmount}'),
                onTap:() => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BillScreen(widget.bill.id!, widget.bill.createdDate!))),
              ),
              ),

          ])),
    );
  }
}
