import 'package:mobile/model/transaction.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TransactionWidget extends StatefulWidget {
  final Transaction transaction;

  const TransactionWidget(String s,
      {Key key,
        @required this.transaction})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
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

                  child: new CircleAvatar(
                    radius: 20,
                    backgroundColor: widget.transaction.isReversed ? gray1 : colorAccent,
                    child: new Icon(
                      MdiIcons.currencySign,
                      color: green1,
                    ),
                  ),
                ),
                title: Text(
                  "Transaction No."+widget.transaction.id.toString() ?? '',
                  style: TextStyle(color: textPrimaryColor,  fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Consultation id: \t'+widget.transaction.consultationId.toString() ),
                    Text('Amount:\t'+widget.transaction.amount.toString()+ " "+widget.transaction.currencyCode),
                    Text('Department: \t'+ widget.transaction.departmentName + "["+widget.transaction.departmentId.toString()+"]"),
                    Text((widget.transaction.medicalServiceName == null?  'Medicine:\t'+widget.transaction.medicineName.toString():'Service:\t'+widget.transaction.medicalServiceName.toString())),
                    Text('Date:'+widget.transaction.transactionDate,style: TextStyle(color: textPrimaryColor,  fontWeight: FontWeight.w200)),
                  ],
                ),
                onTap: null
              ),
            ),

          ])),
    );
  }
}
