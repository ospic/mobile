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
    return  Container(
        decoration: BoxDecoration( //                    <-- BoxDecoration
          border: Border(bottom: BorderSide()),
        ),
        child:ListTile(
          tileColor: gray1,
          dense: true,
          leading: Icon(MdiIcons.account),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(widget.transaction.amount.toString() +" "+ widget.transaction.currencyCode, style: TextStyle(fontWeight: FontWeight.bold),)],
          ),
          title:  Text((widget.transaction.medicalServiceName == null?  'Medicine:\t'+widget.transaction.medicineName.toString():'Service:\t'+widget.transaction.medicalServiceName.toString())),
          subtitle:     Text('Date:'+widget.transaction.transactionDate,style: TextStyle(color: textPrimaryColor,  fontWeight: FontWeight.w200)),
        ));
  }
}
